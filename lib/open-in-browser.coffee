{CompositeDisposable} = require 'atom'
opn = require 'opn'

module.exports =

  subscriptions: null

  activate: ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-text-editor',
      'open-in-browser:open', @openEditor.bind(this)
    @subscriptions.add atom.commands.add '.tree-view .file',
      'open-in-browser:open-tree-view', @openTreeView.bind(this)

  getFilePath: ->
    new Promise (resolve, reject) ->
      if atom.workspace.hasActiveTextEditor
        resolve atom.workspace.getActiveTextEditor().getPath()
      else
        reject Error 'Active pane item is not a text editor.'

  openEditor: ->
    @getFilePath()
      .then (result) =>
        if result? then @open result else Error 'Path undefined for editor content. (Has it been saved?)'
      .catch (error) => @report error

  openTreeView: ({target}) ->
    @open target.dataset.path

  open: (filePath) ->
    opn(filePath)

  report: (error) ->
    atom.notifications.addError error.toString(), detail: error.stack or '', dismissable: true
    console.error error

  deactivate: ->
    @subscriptions?.dispose()
