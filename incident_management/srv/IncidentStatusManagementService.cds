using { incident_management as db } from '../db/schema';
@impl: './handler/IncidentStatusManagementService.js'
@path: '/service/IncidentStatusManagementService'
service IncidentStatusManagementService {
    @odata.draft.enabled
    entity IncidentStatus as projection on db.IncidentStatus;
}