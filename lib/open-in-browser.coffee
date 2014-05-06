{exec} = require('child_process')

module.exports =
  activate: (state) ->

    atom.workspaceView.command "open-in-browser:open", => @open()

  open: ->
    editor = atom.workspace.getActivePaneItem()
    file = editor?.buffer.file
    filePath = file?.path
    exec ('open "'+filePath+'"')
