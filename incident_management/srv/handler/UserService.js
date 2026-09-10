import cds from '@sap/cds'

export class UserService extends cds.ApplicationService { init() {

  const { Incidents, IncidentStatus } = cds.entities('UserService')

  this.before (['CREATE', 'UPDATE'], Incidents, async (req) => {
    console.log('Before CREATE/UPDATE Incidents', req.data)
  })
  this.after ('READ', Incidents, async (incidents, req) => {
    console.log('After READ Incidents', incidents)
  })
  this.before (['CREATE', 'UPDATE'], IncidentStatus, async (req) => {
    console.log('Before CREATE/UPDATE IncidentStatus', req.data)
  })
  this.after ('READ', IncidentStatus, async (incidentStatus, req) => {
    console.log('After READ IncidentStatus', incidentStatus)
  })


  return super.init()
}}
