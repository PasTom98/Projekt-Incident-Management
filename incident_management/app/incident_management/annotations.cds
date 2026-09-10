using IncidentManagementService as service from '../../srv/IncidentManagementService';

annotate service.Incidents with @(
    UI.FieldGroup #GeneratedGroup    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'title',
                Value: title,
            },
            {
                $Type: 'UI.DataField',
                Label: 'description',
                Value: description,
            },
            {
                $Type: 'UI.DataField',
                Value: priority_ID,
                Label: 'priority',
                Criticality: (case
                              when priority.text = 'HIGH'
                                then 1
                              when priority.text = 'MEDIUM'
                                then 2
                              when priority.text = 'LOW'
                                then 3
                          end),
            },
            {
                $Type: 'UI.DataField',
                Value: reporter,
                Label: 'reporter',
            },
            {
                $Type: 'UI.DataField',
                Value: workingUser,
                Label: 'workingUser',
            },
            {
                $Type      : 'UI.DataField',
                Value      : incidentStatus_ID,
                Label      : 'Status',
                Criticality: (case
                              when incidentStatus.status = 'OPEN'
                                then 1
                              when incidentStatus.status = 'IN_PROGRESS'
                                then 2
                              when incidentStatus.status = 'RESOLVED'
                                then 3
                              when incidentStatus.status = 'CLOSED'
                                then 0
                          end),
            },
        ],
    },
    UI.Facets                        : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Linked Information',
            ID    : 'LinkedInformation',
            Target: '@UI.FieldGroup#LinkedInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Managed Information',
            ID    : 'ManagedInformation',
            Target: '@UI.FieldGroup#ManagedInformation',
        },
    ],
    UI.LineItem                      : [
        {
            $Type: 'UI.DataField',
            Label: 'title',
            Value: title,
        },
        {
            $Type: 'UI.DataField',
            Label: 'description',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Value: priority_ID,
            Label: 'priority',
            Criticality: (case
                              when priority.text = 'HIGH'
                                then 1
                              when priority.text = 'MEDIUM'
                                then 2
                              when priority.text = 'LOW'
                                then 3
                          end),
        },
        {
            $Type: 'UI.DataField',
            Value: reporter,
            Label: 'reporter',
        },
        {
            $Type: 'UI.DataField',
            Value: workingUser,
            Label: 'workingUser',
        },
        {
            $Type      : 'UI.DataField',
            Value      : statusName,
            Label      : 'statusName',
            Criticality: (case
                              when incidentStatus.status = 'OPEN'
                                then 1
                              when incidentStatus.status = 'IN_PROGRESS'
                                then 2
                              when incidentStatus.status = 'RESOLVED'
                                then 3
                              when incidentStatus.status = 'CLOSED'
                                then 0
                          end),
        },
    ],
    UI.FieldGroup #ManagedInformation: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdAt,
            },
            {
                $Type: 'UI.DataField',
                Value: createdBy,
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedAt,
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedBy,
            },
        ],
    },
    UI.HeaderInfo                    : {
        TypeName      : '',
        TypeNamePlural: '',
        Title         : {
            $Type: 'UI.DataField',
            Value: title,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: description,
        },
    },
    UI.FieldGroup #LinkedInformation : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: incidentStatus_ID,
                Label: 'Status',
                Criticality: (case
                              when incidentStatus.status = 'OPEN'
                                then 1
                              when incidentStatus.status = 'IN_PROGRESS'
                                then 2
                              when incidentStatus.status = 'RESOLVED'
                                then 3
                              when incidentStatus.status = 'CLOSED'
                                then 0
                          end),
            },
            {
                $Type: 'UI.DataField',
                Value: isWorkedOnBy_ID,
                Label: 'isWorkedOnBy',
            },
            {
                $Type: 'UI.DataField',
                Value: reportedBy_ID,
                Label: 'reportedBy',
            },
        ],
    },
);

annotate service.Incidents with {
    incidentStatus @(
        Common.ValueList : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'IncidentStatus',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: incidentStatus_ID,
                ValueListProperty: 'status',
            }, ]
        },
        Common.ExternalID: incidentStatus.status,
    )
};

annotate service.Incidents with {
    isWorkedOnBy @(
        Common.ValueList : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'User',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: isWorkedOnBy_ID,
                ValueListProperty: 'fullName',
            }, ]
        },
        Common.ExternalID: isWorkedOnBy.fullName,
    )
};

annotate service.Incidents with {
    reportedBy @(
        Common.ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'User',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: reportedBy_ID,
                ValueListProperty: 'fullName'
            }, ]
        },
        Common.Text     : reportedBy.fullName,
    )
};

annotate service.Incidents with {
    priority @(
        Common.ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'IncidentPriority',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: priority_ID,
                ValueListProperty: 'text'
            }, ]
        },
        Common.Text     : priority.text,
    )
};


annotate service.Incidents with {
    reportedBy @Common.ExternalID: reportedBy.fullName
};

annotate service.Incidents with {
    reporter @Common.ExternalID: reportedBy.fullName
};

annotate service.Incidents with {
    workingUser @Common.ExternalID: isWorkedOnBy.fullName
};

annotate service.Incidents with {
    priority @Common.ExternalID: priority.text
};

annotate service.Incidents with {
    statusName @Common.ExternalID: incidentStatus.status
};
