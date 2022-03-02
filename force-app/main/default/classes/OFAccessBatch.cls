// OFAccess -- Object Field Access
public class OFAccessBatch implements Database.Batchable<sObject>, Database.AllowsCallouts {
    
    public static Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'Select Name from ArchiveObject__c';
        return Database.getQueryLocator(query);
    }
    
    public static void execute(Database.BatchableContext bc, List<ArchiveObject__c> objNames){
        for(ArchiveObject__c s : objNames){
            giveReadAccessToAll('Archive Account', true, s.Name);
        }
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Task Executed.');
    }
    
    // give read access to all fields of an object.
    public static void giveReadAccessToAll(String profileName, boolean isCustom, String objectName){
        FLS.updateFieldLevelSecurityAllFields(profileName, isCustom, objectName, true, false);
    }
}
