public class Fields {
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
}