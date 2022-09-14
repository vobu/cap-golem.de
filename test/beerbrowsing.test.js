const cds = require("@sap/cds/lib")
const { GET, expect } = cds.test() //.verbose()

describe("view beers", () => {
  it("service api: should show a list of all beers", async () => {
    const BeerShopBrowse = await cds.connect.to("BeershopService")
    const { Beers } = BeerShopBrowse.entities
    const allBeers = await SELECT.from(Beers)
    expect(allBeers.length).to.be.greaterThanOrEqual(1)
  })
  it("http api: should show a list of all beers", async () => {
    /**
     * @type {import("axios").AxiosResponse}
     */
    const beers = await GET("/beershop/Beers")
    expect(beers.data.value.length).to.be.greaterThanOrEqual(1)
  })
})
