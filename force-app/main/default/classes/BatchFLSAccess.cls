public class BatchFLSAccess implements Database.Batchable<sObject>, Database.AllowsCallouts {
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'Select Name from ArchiveObject__c';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<ArchiveObject__c> objNames){
        for(ArchiveObject__c s : objNames){
            OFAccess.giveReadAccessToAll('Archive Account', true, s.object__c);
        }
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Task Executed.');
    }
}