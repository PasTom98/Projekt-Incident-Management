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
);

