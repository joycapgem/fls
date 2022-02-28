@isTest public class OFAccessTest {
    private class WebServiceMockImplSuccess implements WebServiceMock
	{
		public void doInvoke(
			Object stub, Object request, Map<String, Object> response,
			String endpoint, String soapAction, String requestName,
			String responseNS, String responseName, String responseType)
		{
            if(request instanceof MetadataService.updateMetadata_element){
                MetadataService.SaveResult result = new MetadataService.SaveResult();
                result.fullName = 'Successfully saved';
                result.success = true;
                MetadataService.updateMetadataResponse_element updateElement = new MetadataService.updateMetadataResponse_element();
                updateElement.result = new MetadataService.SaveResult[]{ result };
                response.put('response_x', updateElement);
            }
                
            
        }
	}
    
    private class WebServiceMockImplError implements WebServiceMock
	{
		public void doInvoke(
			Object stub, Object request, Map<String, Object> response,
			String endpoint, String soapAction, String requestName,
			String responseNS, String responseName, String responseType)
		{
            if(request instanceof MetadataService.updateMetadata_element){
                MetadataService.Error error = new MetadataService.Error();
               	error.message = 'Error case test';
                error.fields = new String[]{'Arbitrary_Field'};
                error.statusCode = 	'999';
                
                MetadataService.SaveResult result = new MetadataService.SaveResult();
                result.fullName = 'Arbitrary Object';
                result.success = false;
                result.errors = new MetadataService.Error[]{ error };
                
                MetadataService.updateMetadataResponse_element updateElement = new MetadataService.updateMetadataResponse_element();
                updateElement.result = new MetadataService.SaveResult[]{ result };
                response.put('response_x', updateElement);
            }
                
            
        }
	}
    
    @isTest public static void runPositiveTestsAllFieldsRead(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplSuccess());
        Profile profileData = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];        
        Test.startTest();
        OFAccess.giveReadAccessToAll(profileData.Name, true, 'Account');
        Test.stopTest();
    }
    
    @isTest public static void runPositiveTestsAllFieldsEdit(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplSuccess());
        Profile profileData = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];
        Test.startTest();
        OFAccess.giveEditAccessToAll(profileData.Name, true, 'Account');
        Test.stopTest();
    }
    
    @isTest public static void runPositiveTestsAllFieldsRevoke(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplSuccess());
        Profile profileData = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];
        Test.startTest();
        OFAccess.revokeAccessFromAll(profileData.Name, true, 'Account');
        Test.stopTest();
    }
    
    @isTest public static void runPositiveTestsSpecifiedFieldsRead(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplSuccess());
        Profile profileData = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];
        Test.startTest();
        OFAccess.giveReadAccessToSpecifiedFields(profileData.Name, true, 'Account', 'Fax,Type,AccountNumber,Price__c');
        Test.stopTest();
    }
    
    @isTest public static void runPositiveTestsSpecifiedFieldsEdit(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplSuccess());
        Profile profileData = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];
        Test.startTest();
        OFAccess.giveEditAccessToSpecifiedFields(profileData.Name, true, 'Account', 'Fax,Type,AccountNumber,Price__c');
        Test.stopTest();
    }
    
    @isTest public static void runPositiveTestsSpecifiedFieldsRevoke(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplSuccess());
        Profile profileData = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];
        Test.startTest();
        OFAccess.revokeAccessFromSpecifiedFields(profileData.Name, true, 'Account', 'Fax,Type,AccountNumber,Price__c');
        Test.stopTest();
    }    
    
    @isTest public static void runNegativeTestsAllFields(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplError());
        Profile profileData = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];
        Test.startTest();
        try{
            OFAccess.giveReadAccessToAll(profileData.Name, true, 'Account');
        }catch(Exception e){
            System.debug(e);
        }
        Test.stopTest();
    }
    
	@isTest public static void runNegativeTestsSpecificFields(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplError());
        Profile profileData = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];
        Test.startTest();
        try{
            OFAccess.giveEditAccessToSpecifiedFields(profileData.Name, true, 'Account', 'Fax,Type,AccountNumber,Price__c');
        }catch(Exception e){
            System.debug(e);
        }
        Test.stopTest();
    }
}