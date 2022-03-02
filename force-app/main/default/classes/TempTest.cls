@isTest public class TempTest {
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
    
    @isTest public static void runPositiveTestsAllFieldsRead(){
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImplSuccess());
        Profile profileDet = [SELECT Id, Name FROM Profile WHERE Name = 'National Accounts' LIMIT 1];
        System.debug(profileDet.Name);
        Test.startTest();
        OFAccessBatch.giveReadAccessToAll(profileDet.Name, true, 'Account');
        Test.stopTest();
    }
}