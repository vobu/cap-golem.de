using {your.shop as the} from '../db/schema';

// alle Nutzer mit einer Rolle "admin" dürfen Create, Read + Update
// nur der Nutzer "SuperAdmin" darf Daten löschen
service BeershopAdminService @(
    requires : 'admin',
    restrict : [{
        grant : 'DELETE',
        to    : 'SuperAdmin'
    }]
) {
    entity Beers     as projection on the.Beer;
    entity Breweries as projection on the.Brewery;
}

