public class FieldAccessBatch implements Database.Batchable<sObject>, Database.AllowsCallouts{
    public Database.QueryLocator start(Database.BatchableContext BC){
        String query = 'Select Id, object__c from ArchiveObject__c';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext BC, List<ArchiveObject__c> objNames){
        for(ArchiveObject__c s : objNames){
        	OFAccess.revokeAccessFromAll('User1', true, s.object__c);
        }
    }
    
    public void finish(Database.BatchableContext BC){
        System.debug('Task Executed.');
    }
    
}