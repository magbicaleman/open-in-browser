{exec} = require('child_process')

module.exports =
  activate: (state) ->

    atom.workspaceView.command "open-in-browser:open", => @open()

  open: ->
    editor = atom.workspace.getActivePaneItem()
    file = editor?.buffer.file
    filePath = file?.path
    process_architecture = process.platform

    switch process_architecture
      when 'darwin' then exec ('open "'+filePath+'"')
      when 'linux' then exec ('xdg-open "'+filePath+'"')
