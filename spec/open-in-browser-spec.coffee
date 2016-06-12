describe 'Open in browser preview', ->
  pack = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage 'open-in-browser'
        .then (p) -> pack = p

  it 'should load the package', ->
    expect(pack.name).toBe 'open-in-browser'
