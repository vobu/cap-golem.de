using {your.shop as the} from '../db/schema';

service BeershopService {
    entity Beers     as projection on the.Beer;

    @readonly
    entity Breweries as projection on the.Brewery;
}

extend service BeershopService with {
    action rateBeer();
}
