@isTest
private class CaseTriggerTest {

    @isTest
    static void testResolutionDate() {

        Case c = new Case(
            Subject='Test Case',
            Status='New',
            Origin='Phone'
        );

        insert c;

        c.Status='Closed';

        update c;

        Case updatedCase = [
            SELECT Resolution_Date__c
            FROM Case
            WHERE Id=:c.Id
        ];

        System.assertEquals(
            Date.today(),
            updatedCase.Resolution_Date__c
        );
    }
}
