namespace your.shop;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Beer : cuid, managed {
    name           : localized String;
    abv            : Decimal(3, 1);
    ibu            : Integer;
    style          : Style;
    brewery        : Association to one Brewery;
    virtual rating : Integer
}

entity Brewery : cuid, managed {
    name  : localized String;
    beers : Composition of many Beer
                on beers.brewery = $self;
}

type Style : String enum {
    Helles;
    Pils;
    Dunkles;
    Weizen;
    Bock;
    Pale
}
