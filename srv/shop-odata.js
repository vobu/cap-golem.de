module.exports = (srv) => {
  // `srv` is the instance of cds.Service
  srv.after("READ", "Beers", (beers) => {
    const adjectives = ["lecker", "wahnsinns", "mega", "bomben", "hammer"]
    if (beers.length) {
      for (let b of beers) {
        const id = ~~(adjectives.length * Math.random())
        b.name = `${adjectives[id]} ${b.name}`
        adjectives.splice(id, 1)
      }
    }
  })
}
