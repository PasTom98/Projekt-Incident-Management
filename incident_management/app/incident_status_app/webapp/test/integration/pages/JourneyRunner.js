sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"incidentstatus/incidentstatusapp/test/integration/pages/IncidentStatusList.gen",
	"incidentstatus/incidentstatusapp/test/integration/pages/IncidentStatusObjectPage.gen"
], function (JourneyRunner, IncidentStatusListGenerated, IncidentStatusObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('incidentstatus/incidentstatusapp') + '/test/flpSandbox.html#incidentstatusincidentstatusap-tile',
        pages: {
			onTheIncidentStatusListGenerated: IncidentStatusListGenerated,
			onTheIncidentStatusObjectPageGenerated: IncidentStatusObjectPageGenerated
        },
        async: true
    });

    return runner;
});

