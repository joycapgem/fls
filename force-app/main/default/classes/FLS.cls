public class FLS {
    /*
     To give access to some fields of an object.
     */
   	public static void updateFieldLevelSecuritySpecifiedFields(String profileName, boolean isCustom, String objectName, String fieldNames, boolean canRead, boolean canEdit){
        
        MetadataService.MetadataPort service = createService();
        System.debug('Service Created.');
        MetadataService.Profile cust = new MetadataService.Profile();
        cust.fullName = profileName;
        cust.custom = isCustom;
        List<String> fields = fieldNames.split(',');
        system.debug(fields);
        MetadataService.ProfileFieldLevelSecurity[] fieldsSec = new MetadataService.ProfileFieldLevelSecurity[fields.size()];
        
        for(String fieldName : fields){
            MetadataService.ProfileFieldLevelSecurity fieldSec = new MetadataService.ProfileFieldLevelSecurity();
            fieldSec.field = objectName + '.' + fieldName;
            fieldSec.readable = canRead;
        	fieldSec.editable = canEdit;
            
            fieldsSec.add(fieldSec);
        }
        
        cust.fieldPermissions  = fieldsSec;
        System.debug('Building required metadata.');
        List<MetadataService.SaveResult> results =
            service.updateMetadata(new MetadataService.Metadata[] { cust });
        System.debug('Metadata created.');
        handleSaveResults(results[0]);
        System.debug('FLS created.');
    }
    
    /*
     To give access to all fields of an object.
     */
    public static void updateFieldLevelSecurityObj(String profileName, boolean isCustom, String objectName, boolean canRead, boolean canEdit){
        
        MetadataService.MetadataPort service = createService();
        System.debug('Service Created.');
        MetadataService.Profile cust = new MetadataService.Profile();
        cust.fullName = profileName;
        cust.custom = isCustom;
        List<String> fields = getAllFields(objectName);
        system.debug(fields);
        MetadataService.ProfileFieldLevelSecurity[] fieldsSec = new MetadataService.ProfileFieldLevelSecurity[fields.size()];
        
        for(String fieldName : fields){
            MetadataService.ProfileFieldLevelSecurity fieldSec = new MetadataService.ProfileFieldLevelSecurity();
            fieldSec.field = objectName + '.' + fieldName;
            fieldSec.readable = canRead;
        	fieldSec.editable = canEdit;
            
            fieldsSec.add(fieldSec);
        }
        
        cust.fieldPermissions  = fieldsSec;
        System.debug('Building required metadata.');
        List<MetadataService.SaveResult> results =
            service.updateMetadata(
                new MetadataService.Metadata[] { cust });
        System.debug('Metadata created.');
        handleSaveResults(results[0]);
        System.debug('FLS created.');
    }

    /*
     helper method to create a service.
     */
    public static MetadataService.MetadataPort createService(){
        
        MetadataService.MetadataPort service = new MetadataService.MetadataPort();
        service.SessionHeader = new MetadataService.SessionHeader_element();
        service.SessionHeader.sessionId = UserInfo.getSessionId();
        service.timeout_x = 80000;
        return service;
    }
    
    /*
     helper method to save the results.
     */
    public static void handleSaveResults(MetadataService.SaveResult saveResult){

        if(saveResult==null || saveResult.success){
            return;
        }
        
        if(saveResult.errors!=null){
            List<String> messages = new List<String>();
            messages.add(
                (saveResult.errors.size()==1 ? 'Error ' : 'Errors ') +
                    'occured processing component ' + saveResult.fullName + '.');

            for(MetadataService.Error error : saveResult.errors){
                messages.add(
                    error.message + ' (' + error.statusCode + ').' +
                    ( error.fields!=null && error.fields.size()>0 ?
                        ' Fields ' + String.join(error.fields, ',') + '.' : '' ) );
            
            }
                
            if(messages.size()>0){
                throw new MetadataServiceExamplesException(String.join(messages, ' '));
            }
        }

        if(!saveResult.success){
            throw new MetadataServiceExamplesException('Request failed with no specified error.');
        }
    }
    
    /*
     helper method to get all fields of an object which are permissionable.
     */
    public static List<String> getAllFields(String objectName){
        
        Map <String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map <String, Schema.SObjectField> fieldMap = schemaMap.get(objectName).getDescribe().fields.getMap();
        
        List<String> fields = new List<String>();
        
        for(Schema.SObjectField sfield : fieldMap.Values())
        {
            schema.describefieldresult dfield = sfield.getDescribe();
            if(dfield.isPermissionable() && dfield.getCompoundFieldName() == Null){
                fields.add(dfield.getname());
            }
        }
        
        return fields;
    }

    /*
     helper exception class.
     */
    public class MetadataServiceExamplesException extends Exception { }
}