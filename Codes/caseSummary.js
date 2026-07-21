import { LightningElement, wire } from 'lwc';

import getCaseSummary from '@salesforce/apex/CaseSummaryController.getCaseSummary';

export default class CaseSummary extends LightningElement {

    totalCases = 0;
    openCases = 0;
    closedCases = 0;
    highPriorityCases = 0;

    @wire(getCaseSummary)
    wiredSummary({ error, data }) {

        if (data) {

            this.totalCases = data.totalCases;
            this.openCases = data.openCases;
            this.closedCases = data.closedCases;
            this.highPriorityCases = data.highPriorityCases;

        } else if (error) {

            console.error(error);

        }
    }
}
