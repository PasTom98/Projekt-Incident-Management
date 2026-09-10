sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"usermanagement/usermanagementapp/test/integration/pages/UserList.gen",
	"usermanagement/usermanagementapp/test/integration/pages/UserObjectPage.gen"
], function (JourneyRunner, UserListGenerated, UserObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('usermanagement/usermanagementapp') + '/test/flpSandbox.html#usermanagementusermanagementap-tile',
        pages: {
			onTheUserListGenerated: UserListGenerated,
			onTheUserObjectPageGenerated: UserObjectPageGenerated
        },
        async: true
    });

    return runner;
});

