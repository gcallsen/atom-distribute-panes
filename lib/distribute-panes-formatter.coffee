module.exports =
  ###
  @name Distribute Panes
  @description
  Distribute current panes evenly.
  ###
  distributePanesEvenly: ->
    for pane in atom.workspace.getPanes()
        pane.setFlexScale(1)

    return
