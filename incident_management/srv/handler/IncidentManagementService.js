import cds from '@sap/cds'
import Before_Create_Draft_Incident from '../code/Before_Create_Draft_Incident.js'
export class IncidentManagementService extends cds.ApplicationService { init() {

  const { Incidents } = cds.entities('IncidentManagementService')
  this.before ('CREATE', Incidents.drafts , async (req) => {
    await Before_Create_Draft_Incident(req);
  })
  /**this.on("CREATE", Incidents.drafts, async (req, test) => {
    const status_open = await Before_Create_Draft_Incident(req);
      console.log("Hallo Welt");
      req.data.incidentStatus_ID = status_open.ID;
    await test();
    });
    */
  this.after ('CREATE', Incidents.drafts, async (req, next) => {
    console.log('Test')
  });
  this.before (['CREATE', 'UPDATE'], Incidents, async (req) => {
    console.log('Before CREATE/UPDATE Incidents', req.data)
  })
  this.after ('READ', Incidents, async (incidents, req) => {
    console.log('After READ Incidents', incidents)
  })


  return super.init()
}}
