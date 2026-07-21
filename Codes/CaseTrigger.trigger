trigger CaseTrigger on Case (before update) {

    for (Case c : Trigger.new) {

        Case oldCase = Trigger.oldMap.get(c.Id);

        if (c.Status == 'Closed' && oldCase.Status != 'Closed') {
            c.Resolution_Date__c = Date.today();
        }

    }
}
