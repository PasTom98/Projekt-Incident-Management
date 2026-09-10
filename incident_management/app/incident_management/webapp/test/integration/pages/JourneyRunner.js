sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"incidentmanagement/incidentmanagement/test/integration/pages/IncidentsList.gen",
	"incidentmanagement/incidentmanagement/test/integration/pages/IncidentsObjectPage.gen"
], function (JourneyRunner, IncidentsListGenerated, IncidentsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('incidentmanagement/incidentmanagement') + '/test/flpSandbox.html#incidentmanagementincidentmana-tile',
        pages: {
			onTheIncidentsListGenerated: IncidentsListGenerated,
			onTheIncidentsObjectPageGenerated: IncidentsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

