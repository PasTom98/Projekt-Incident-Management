using { incident_management as db } from '../db/schema';

@impl: './handler/IncidentManagementService.js'
@path: '/service/IncidentManagementService'
service IncidentManagementService {
    @odata.draft.enabled
    entity Incidents as projection on db.Incidents;
}