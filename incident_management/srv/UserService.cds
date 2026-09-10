using { incident_management as db } from '../db/schema';
@impl: './handler/UserIncidentHandlers.js'
@path: '/service/UserService'
service UserService {
    @odata.draft.enabled
    entity Incidents as projection on db.Incidents;
    @readonly
    entity IncidentStatus as projection on db.IncidentStatus;
}