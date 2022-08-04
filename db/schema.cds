namespace your.shop;

using {
    cuid,
    managed,
    temporal,
    Currency
} from '@sap/cds/common';

entity Beers : cuid, managed {
    name           : String(100);
    abv            : Decimal(3, 1);
    ibu            : Integer;
    brewery        : Association to one Brewery;
    virtual rating : Integer
}

entity Brewery : cuid, managed {
    name  : String(150);
    beers : Composition of many Beers
                on beers.brewery = $self;
}
