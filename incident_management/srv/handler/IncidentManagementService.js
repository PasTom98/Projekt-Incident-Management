import cds from '@sap/cds'

export class IncidentManagementService extends cds.ApplicationService { init() {

  const { Incidents } = cds.entities('IncidentManagementService')

  this.before (['CREATE', 'UPDATE'], Incidents, async (req) => {
    console.log('Before CREATE/UPDATE Incidents', req.data)
  })
  this.after ('READ', Incidents, async (incidents, req) => {
    console.log('After READ Incidents', incidents)
  })


  return super.init()
}}
