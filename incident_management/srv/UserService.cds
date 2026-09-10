using { incident_management as db } from '../db/schema';
@impl: './handler/UserService.js'
@path: '/service/UserService'
service UserService {
    @odata.draft.enabled
    entity User as projection on db.User;
}