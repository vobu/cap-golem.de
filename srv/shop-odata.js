module.exports = (srv) => {
  // `srv` is the instance of cds.Service
  srv.after("READ", "Breweries", (beers) => {
    for (let beer of beers) {
      beer.name = `lecker ${beer.name}`
    }
  })
}
