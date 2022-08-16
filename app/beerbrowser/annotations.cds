using BeershopService as service from '../../srv/shop-odata';

annotate service.Beers with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },
        {
            $Type : 'UI.DataField',
            Value : style,
            Label : 'style',
        },
        {
            $Type : 'UI.DataField',
            Value : abv,
            Label : 'abv',
        },
        {
            $Type : 'UI.DataField',
            Value : ibu,
            Label : 'ibu',
        },
    ]
);
annotate service.Beers with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Details',
            ID : 'Details',
            Target : '@UI.FieldGroup#Details',
        },
    ],
    UI.FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : brewery.name,
                Label : 'Brauerei',
            },{
                $Type : 'UI.DataField',
                Value : abv,
                Label : 'abv',
            },{
                $Type : 'UI.DataField',
                Value : ibu,
                Label : 'ibu',
            },{
                $Type : 'UI.DataField',
                Value : createdAt,
            },{
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },{
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : rating,
                Label : 'rating',
            },],
    }
);
annotate service.Beers with @(
    UI.HeaderInfo : {
        TypeName : 'Details',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : style,
        },
    }
);
