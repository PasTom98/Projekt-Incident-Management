import cds from '@sap/cds'

export class IncidentStatusManagementService extends cds.ApplicationService { init() {

  const { IncidentStatus } = cds.entities('IncidentStatusManagementService')

  this.before (['CREATE', 'UPDATE'], IncidentStatus, async (req) => {
    console.log('Before CREATE/UPDATE IncidentStatus', req.data)
  })
  this.after ('READ', IncidentStatus, async (incidentStatus, req) => {
    console.log('After READ IncidentStatus', incidentStatus)
  })


  return super.init()
}}
