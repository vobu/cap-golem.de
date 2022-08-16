using { BeershopService } from './shop-odata';

@protocol: 'rest'
service BeershopRestService {
    entity Beers as projection on BeershopService.Beers;
    entity Breweries as projection on BeershopService.Breweries;
};

