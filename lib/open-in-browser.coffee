{CompositeDisposable} = require 'atom'
opn = require 'opn'

module.exports =

  subscriptions: null

  activate: ->
    @subscriptions = new CompositeDisposable

    @subscriptions.add atom.commands.add 'atom-text-editor', 'open-in-browser:open': => @open()
    @subscriptions.add atom.commands.add 'atom-panel', 'open-in-browser:open-tree-view': => @openTreeView()

  openPath: (filePath) ->
    opn(filePath).catch (error) ->
      atom.notifications.addError error.toString(), detail: error.stack or '', dismissable: true
      console.error error

  open: ->
    editor = atom.workspace.getActivePaneItem()
    file = editor?.buffer.file
    filePath = file?.path
    @openPath filePath

  openTreeView: ->
    selectedPath = null

    if atom.packages.isPackageLoaded 'nuclide-file-tree'
      nuclideFileTree = atom.packages.getLoadedPackage 'nuclide-file-tree'
      path = nuclideFileTree.contextMenuManager.activeElement?.getAttribute 'data-path'
      selectedPath = path

    else if atom.packages.isPackageLoaded 'tree-view'
      treeView = atom.packages.getLoadedPackage 'tree-view'
      mainModulePath = require treeView.mainModulePath
      packageObj = mainModulePath.serialize()
      selectedPath = packageObj?.selectedPath

    @openPath selectedPath if selectedPath

  deactivate: ->
    @subscriptions?.dispose()
