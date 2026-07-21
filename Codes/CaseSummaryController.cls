public with sharing class CaseSummaryController {

    @AuraEnabled(cacheable=true)
    public static Map<String, Integer> getCaseSummary() {

        Map<String, Integer> summary = new Map<String, Integer>();

        Integer totalCases = [
            SELECT COUNT()
            FROM Case
        ];

        Integer openCases = [
            SELECT COUNT()
            FROM Case
            WHERE Status != 'Closed'
        ];

        Integer closedCases = [
            SELECT COUNT()
            FROM Case
            WHERE Status = 'Closed'
        ];

        Integer highPriorityCases = [
            SELECT COUNT()
            FROM Case
            WHERE Priority = 'High'
        ];

        summary.put('totalCases', totalCases);
        summary.put('openCases', openCases);
        summary.put('closedCases', closedCases);
        summary.put('highPriorityCases', highPriorityCases);

        return summary;
    }
}
