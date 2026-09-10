import { SELECT } from "@sap/cds/lib/ql/cds-ql.js";

export default async (req) => {
    if (!req.data.incidentStatus_ID) {
        const { IncidentStatus } = 
            cds.entities('IncidentManagementService');
        const status_open = await SELECT.one.from(IncidentStatus).where({ status: 'OPEN'});
        if (!status_open) {
            return req.error(500, 'Default incident status OPEN does not exist')
        }
        req.data.incidentStatus_ID = status_open.ID;
    }
}