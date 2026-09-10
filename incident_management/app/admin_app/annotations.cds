using AdminService as service from '../../srv/AdminService';
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
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
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
    ],
);

annotate service.Incidents with {
    reportedBy @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'User',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : reportedBy_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'fullName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'dateOfBirth',
            },
        ],
    }
};

annotate service.Incidents with {
    isWorkedOnBy @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'User',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : isWorkedOnBy_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'fullName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'dateOfBirth',
            },
        ],
    }
};

annotate service.Incidents with {
    incidentStatus @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'IncidentStatus',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : incidentStatus_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'status',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
        ],
    }
};

