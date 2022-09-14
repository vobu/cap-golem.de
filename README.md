# SAP CAP Coding für golem.de-Artikel

Ein Minimalbeispiel für einen fiktiven Biershop, geschrieben mit dem [SAP Cloud Application Programming Model](https://cap.cloud.sap/docs/).

## Installation + Start

Installation des SAP CAP Frameworks inklusive Adaptern:

```bash
# grundsätzlich funktional mit jeder Node.js-Version >= 14
$> nvm use # //> v18; Linux + macOS, Windows...?
$> npm install
```

Start der Anwendung:

```bash
$> npm start
# ...
[cds] - server listening on { url: 'http://localhost:4004' }
# ...
```

Verpackt in das `start` npm Skript sind

- Deployment von Beispieldaten aus `/db/data/*.csv` in eine lokale SQLite Datenbank
- Starten des Frameworks (`cds run`)

Ausführen von Service- und HTTP-Tests:

```bash
$> npm test
```

Hierfür kommt das [CAP-eigene `cds.test()` API](https://cap.cloud.sap/docs/node.js/cds-test) zum Einsatz, das u.a. [Jest](https://jestjs.io/), [Axios](https://axios-http.com/) und [Chai](https://www.chaijs.com/) nutzt.

## URLs (Auszüge)

- `http://localhost:4004` &rarr; Übersichtsseite
- `http://localhost:4004/beershop/Beers` &rarr; OData v4: Liste aller Biere
- `http://localhost:4004/v2/beershop/Beers` &rarr; OData v2: Liste aller Biere
- `http://localhost:4004/beershop-rest/Beers` &rarr; REST: Liste aller Biere
- `http://localhost:4004/graphql` &rarr; GraphQL-UI
- `http://localhost:4004/beerbrowser/webapp/index.html` &rarr; Fiori Elements-UI

## Credits

- offizieller "Bookshop" von CAP: https://github.com/SAP-samples/cloud-cap-samples/tree/main/bookshop
- infamous "Beershop" von @gregorwolf: https://github.com/gregorwolf/pg-beershop
