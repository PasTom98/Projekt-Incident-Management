using { incident_management as db } from '../db/schema';

@impl: './handler/IncidentManagementService.js'
@path: '/service/IncidentManagementService'
service IncidentManagementService {
    @odata.draft.enabled
    entity Incidents as projection on db.Incidents {
        *,
        virtual null as statusName : String,
        virtual null as workingUser : String,
        virtual null as reporter : String
    };
    @readonly
    entity IncidentStatus as projection on db.IncidentStatus;
    @readonly
    entity User as projection on db.User;
}