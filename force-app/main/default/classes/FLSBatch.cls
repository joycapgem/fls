public class FLSBatch {
    public static Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'Select Name from ArchiveObject__c';
        return Database.getQueryLocator(query);
    }
    
    public static void execute(Database.BatchableContext bc, List<ArchiveObject__c> objNames){
        for(ArchiveObject__c s : objNames){
            OFAccess.giveReadAccessToAll('Archive Account', true, s.Name);
        }
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Task Executed.');
    }
}
