distributePanesFormatter = require './distribute-panes-formatter'
{CompositeDisposable} = require 'atom'

module.exports = DistributePanes =
  subscriptions: null

  activate: (state) ->
    # Events subscribed to in atom's system can be easily cleaned up with
    # a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace',
        'distribute-panes:distribute-evenly': => @distribute()

  deactivate: ->
    @subscriptions.dispose()

  distribute: ->
    distributePanesFormatter.distributePanesEvenly()
