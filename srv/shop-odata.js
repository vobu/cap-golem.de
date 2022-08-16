module.exports = (srv) => {
  // `srv` is the instance of cds.Service
  srv.after("READ", "Breweries", (brewery) => {
    if (brewery.length) {
      for (let b of brewery) {
        b.name = `lecker ${b.name}`
      }
    }
  })
}
