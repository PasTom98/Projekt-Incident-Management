using IncidentStatusManagementService as service from '../../srv/IncidentStatusManagementService';
annotate service.IncidentStatus with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
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
            Label : 'Managed Informations',
            ID : 'ManagedInformations',
            Target : '@UI.FieldGroup#ManagedInformations',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
            Criticality: (case
                              when status = 'OPEN'
                                then 1
                              when status = 'IN_PROGRESS'
                                then 2
                              when status = 'RESOLVED'
                                then 3
                              when status = 'CLOSED'
                                then 0
                          end),
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : status,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : description,
        },
    },
    UI.FieldGroup #ManagedInformations : {
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
);

