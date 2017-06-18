# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
atom.keymaps.partialMatchTimeout = 90

atom.commands.add 'atom-text-editor',
  'user:activate-normal-mode-and-save': (event) ->
    commands = ['vim-mode-plus:activate-normal-mode', 'core:save']
    atomTextEditor = document.querySelector('atom-text-editor')
    commands.forEach (command) ->
      atom.commands.dispatch atomTextEditor, command
