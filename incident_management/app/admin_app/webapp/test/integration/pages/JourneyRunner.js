sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"adminapp/adminapp/test/integration/pages/IncidentsList.gen",
	"adminapp/adminapp/test/integration/pages/IncidentsObjectPage.gen"
], function (JourneyRunner, IncidentsListGenerated, IncidentsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('adminapp/adminapp') + '/test/flpSandbox.html#adminappadminapp-tile',
        pages: {
			onTheIncidentsListGenerated: IncidentsListGenerated,
			onTheIncidentsObjectPageGenerated: IncidentsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

