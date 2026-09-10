import cds from '@sap/cds'

export class UserService extends cds.ApplicationService { init() {

  const { User } = cds.entities('UserService')

  this.before (['CREATE', 'UPDATE'], User, async (req) => {
    console.log('Before CREATE/UPDATE User', req.data)
  })
  this.after ('READ', User, async (user, req) => {
    console.log('After READ User', user)
  })


  return super.init()
}}
