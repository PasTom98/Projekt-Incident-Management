using IncidentManagementService as service from '../../srv/IncidentManagementService';
annotate service.Incidents with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'priority',
                Value : priority,
            },
            {
                $Type : 'UI.DataField',
                Value : reporter,
                Label : 'reporter',
            },
            {
                $Type : 'UI.DataField',
                Value : workingUser,
                Label : 'workingUser',
            },
            {
                $Type : 'UI.DataField',
                Value : incidentStatus_ID,
                Label : 'Status',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Linked Information',
            ID : 'LinkedInformation',
            Target : '@UI.FieldGroup#LinkedInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Managed Information',
            ID : 'ManagedInformation',
            Target : '@UI.FieldGroup#ManagedInformation',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'priority',
            Value : priority,
        },
        {
            $Type : 'UI.DataField',
            Value : reporter,
            Label : 'reporter',
        },
        {
            $Type : 'UI.DataField',
            Value : statusName,
            Label : 'statusName',
        },
        {
            $Type : 'UI.DataField',
            Value : workingUser,
            Label : 'workingUser',
        },
    ],
    UI.FieldGroup #ManagedInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : description,
        },
    },
    UI.FieldGroup #LinkedInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : incidentStatus_ID,
                Label : 'incidentStatus_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : isWorkedOnBy_ID,
                Label : 'isWorkedOnBy_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : reportedBy_ID,
                Label : 'reportedBy_ID',
            },
        ],
    },
);

annotate service.Incidents with {
    incidentStatus @(
        Common.ValueList: {
            $Type : 'Common.ValueListType',
            CollectionPath : 'IncidentStatus',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : incidentStatus_ID,
                    ValueListProperty : 'ID',
                },
            ]
        },
        Common.ExternalID : incidentStatus.status,
        )
};

annotate service.Incidents with {
    isWorkedOnBy @(
        Common.ValueList: {
            $Type : 'Common.ValueListType',
            CollectionPath : 'User',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : fullName,
                    ValueListProperty : 'isWorkedOnBy',
                },
            ]
        },
        Common.ExternalID : isWorkedOnBy.fullName,
    )
};

annotate service.Incidents with {
    reportedBy @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'User',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : fullName,
                    ValueListProperty : 'reportedBy'
                },
            ]
        }
    )
};



annotate service.Incidents with {
    reportedBy @Common.ExternalID : reportedBy.fullName
};

annotate service.Incidents with {
    reporter @Common.ExternalID : reportedBy.fullName
};

annotate service.Incidents with {
    workingUser @Common.ExternalID : isWorkedOnBy.fullName
};

