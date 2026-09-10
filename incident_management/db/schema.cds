namespace incident_management;

using {
    cuid,
    managed
} from '@sap/cds/common';

type IncidentPriority : String(20) enum {
    low = 'LOW';
    medium = 'MEDIUM';
    high = 'HIGH';
}

entity Incidents : cuid, managed {
    title          : String(100) @mandatory;
    description    : String(1000) @mandatory;
    priority       : IncidentPriority;
    reportedBy   : Association to User;
    isWorkedOnBy : Association to User;
    incidentStatus : Association to IncidentStatus;
}

entity IncidentStatus : cuid, managed {
    status      : String(20);
    description : String(100);
    incidents   : Association to many Incidents on incidents.incidentStatus = $self;
}

aspect Person {
    firstName   : String(50) @mandatory;
    lastName    : String(50) @mandatory;
    fullName    : String = firstName || ' ' || lastName;
    dateOfBirth : Date @mandatory;
}

type UserRole : String(50) enum {
    admin = 'ADMIN';
    user  = 'USER';
}

entity User : Person, cuid, managed {
    userName : String(100) @mandatory;
    email    : String(100) @mandatory;
    role     : UserRole;
    worksOnIncidents : Association to many Incidents on worksOnIncidents.isWorkedOnBy = $self;
}
