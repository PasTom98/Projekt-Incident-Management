using { UserService as user } from '../../UserService';

annotate UserService with @requires : 'admin';