{exec} = require('child_process')

Shell = require('shell')

module.exports =

  activate: (state) ->
    atom.commands.add 'atom-text-editor', 'open-in-browser:open': => @open()
    atom.commands.add 'atom-panel', 'open-in-browser:open-tree-view' : => @openTreeView()

  openPath: (filePath) ->
    process_architecture = process.platform
    switch process_architecture
      when 'darwin' then exec ('open "'+filePath+'"')
      when 'linux' then exec ('xdg-open "'+filePath+'"')
      when 'win32' then Shell.openExternal('file:///'+filePath)

  open: ->
    editor = atom.workspace.getActivePaneItem()
    file = editor?.buffer.file
    filePath = file?.path
    @openPath filePath

  openTreeView: ->
    packageObj = null
    if atom.packages.isPackageLoaded('tree-view') == true
      treeView = atom.packages.getLoadedPackage('tree-view')
      treeView = require(treeView.mainModulePath)
      packageObj = treeView.serialize()
    if typeof packageObj != 'undefined' && packageObj != null
      if packageObj.selectedPath
        @openPath packageObj.selectedPath
