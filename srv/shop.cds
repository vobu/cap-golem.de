using {your.shop as my} from '../db/schema';

service BeershopService {
    @odata.draft.enabled
    entity Beers     as projection on my.Beers;

    entity Breweries as projection on my.Brewery;
}

extend service BeershopService with {
    action rateBeer();
}
