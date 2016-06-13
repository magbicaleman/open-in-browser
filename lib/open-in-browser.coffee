{CompositeDisposable} = require 'atom'
opn = require 'opn'

module.exports =

  subscriptions: null

  activate: ->
    @subscriptions = new CompositeDisposable

    @subscriptions.add atom.commands.add 'atom-text-editor', 'open-in-browser:open', @open.bind(this)
    @subscriptions.add atom.commands.add '.tree-view .file', 'open-in-browser:open-tree-view', @openTreeView.bind(this)

  open: ({target}) ->
    @openPath target.getModel().getPath()

  openTreeView: ({target}) ->
    @openPath target.dataset.path

  openPath: (filePath) ->
    opn(filePath).catch (error) ->
      atom.notifications.addError error.toString(), detail: error.stack or '', dismissable: true
      console.error error

  deactivate: ->
    @subscriptions?.dispose()
