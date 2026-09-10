using { incident_management as db } from '../db/schema';

@impl: './handler/AdminIncidentHandlers.js'
@path: '/admin/AdminService'
service AdminService {
    @odata.draft.enabled
    entity Incidents as projection on db.Incidents;
    @odata.draft.enabled
    entity IncidentStatus as projection on db.IncidentStatus;
    @odata.draft.enabled
    entity User as projection on db.User;
}