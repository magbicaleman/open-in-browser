# Source: https://discuss.atom.io/t/how-do-i-activate-a-package-in-specs/18766
# Example: https://github.com/lee-dohm/right-case/blob/master/spec/right-case-spec.coffee

OpenInBrowser = require '../lib/open-in-browser'

describe 'OpenInBrowser', ->
  [activationPromise, editor, editorView] = []

  executeCommand = (callback) ->
    atom.commands.dispatch(editorView, 'open-in-browser:open')
    waitsForPromise -> activationPromise
    runs(callback)

  beforeEach ->
    waitsForPromise ->
      atom.workspace.open()
    runs ->
      editor = atom.workspace.getActiveTextEditor()
      editorView = atom.views.getView(editor)
      activationPromise = atom.packages.activatePackage('open-in-browser')

  it 'loaded the package', ->
    executeCommand ->
      expect(atom.packages.isPackageActive('open-in-browser')).toBe true
