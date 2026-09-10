using { UserService as user } from '../../UserService';

annotate UserService with @requires : 'authenticated-user';