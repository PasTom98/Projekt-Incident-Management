sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"userapp/userapp/test/integration/pages/IncidentsList.gen",
	"userapp/userapp/test/integration/pages/IncidentsObjectPage.gen"
], function (JourneyRunner, IncidentsListGenerated, IncidentsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('userapp/userapp') + '/test/flpSandbox.html#userappuserapp-tile',
        pages: {
			onTheIncidentsListGenerated: IncidentsListGenerated,
			onTheIncidentsObjectPageGenerated: IncidentsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

