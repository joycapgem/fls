// OFAccess -- Object Field Access
public class OFAccessBatch implements Database.Batchable<sObject>, Database.AllowsCallouts {

    public static Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'Select Id, object__c from ArchiveObject__c';
        return Database.getQueryLocator(query);
    }
    
    public static void execute(Database.BatchableContext bc, List<ArchiveObject__c> objNames){
        for(ArchiveObject__c s : objNames){
            giveReadAccessToAll('User1', true, s.object__c);
        }
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Task Executed.');
    }
    
    // give read access to all fields of an object.
    public void giveReadAccessToAll(String profileName, boolean isCustom, String objectName){
        FLS.updateFieldLevelSecurityAllFields(profileName, isCustom, objectName, true, false);
    }

    // give edit access to all fields of an object.
    public void giveEditAccessToAll(String profileName, boolean isCustom, String objectName){
        FLS.updateFieldLevelSecurityAllFields(profileName, isCustom, objectName, true, true);
    }
    
    // revoke read/edit access from all fields of an object.
    public void revokeAccessFromAll(String profileName, boolean isCustom, String objectName){
        FLS.updateFieldLevelSecurityAllFields(profileName, isCustom, objectName, false, false);
    }
    
    // give read access to specified fields of an object.
    public void giveReadAccessToSpecifiedFields(String profileName, boolean isCustom, String objectName, String fieldNames){
        FLS.updateFieldLevelSecuritySpecifiedFields(profileName, isCustom, objectName, fieldNames, true, false);
    }

    // give edit access to specified fields of an object.
    public void giveEditAccessToSpecifiedFields(String profileName, boolean isCustom, String objectName, String fieldNames){
        FLS.updateFieldLevelSecuritySpecifiedFields(profileName, isCustom, objectName, fieldNames, true, true);
    }
    
    // revoke read/edit access from specified fields of an object.
    public void revokeAccessFromSpecifiedFields(String profileName, boolean isCustom, String objectName, String fieldNames){
        FLS.updateFieldLevelSecuritySpecifiedFields(profileName, isCustom, objectName, fieldNames, false, false);
    }
}