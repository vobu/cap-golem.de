using {your.shop as the} from '../db/schema';

service BeershopAdminService @(requires : 'admin') {
    entity Beers     as projection on the.Beer;
    entity Breweries as projection on the.Brewery;
}
