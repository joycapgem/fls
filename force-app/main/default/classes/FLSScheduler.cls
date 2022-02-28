global class FLSScheduler implements Schedulable {
    global void execute(SchedulableContext sc) {
        OFAccessBatch b = new OFAccessBatch();
        database.executebatch(b, 1);
    }
}