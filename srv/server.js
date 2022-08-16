const ODataV2Proxy = require("@sap/cds-odata-v2-adapter-proxy")
const cds = require("@sap/cds")
cds.on("bootstrap", (app) => app.use(ODataV2Proxy()))
module.exports = cds.server
