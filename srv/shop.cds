using {your.shop as the} from '../db/schema';

service BeershopService {
    @odata.draft.enabled
    entity Beers     as projection on the.Beer;

    entity Breweries as projection on the.Brewery;
}

extend service BeershopService with {
    action rateBeer();
}
