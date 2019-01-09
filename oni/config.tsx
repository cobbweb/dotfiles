import * as React from "react";
import * as Oni from "oni-api";

export const activate = (oni: Oni.Plugin.Api) => {
  console.log("config activated");

  // Move about splits easier.
  oni.input.bind("<c-h>", () =>
    oni.editors.activeEditor.neovim.command(`call OniNextWindow('h')<CR>`)
  );
  oni.input.bind("<c-j>", () =>
    oni.editors.activeEditor.neovim.command(`call OniNextWindow('j')<CR>`)
  );
  oni.input.bind("<c-k>", () =>
    oni.editors.activeEditor.neovim.command(`call OniNextWindow('k')<CR>`)
  );
  oni.input.bind("<c-l>", () =>
    oni.editors.activeEditor.neovim.command(`call OniNextWindow('l')<CR>`)
  );

  // Input
  //
  // Add input bindings here:
  //
  // oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

  //
  // Or remove the default bindings here by uncommenting the below line:
  //
  // oni.input.unbind("<c-p>")
};

export const deactivate = (oni: Oni.Plugin.Api) => {
  console.log("config deactivated");
};

export const configuration = {
  //add custom config here, such as

  "ui.colorscheme": "onedark",

  "oni.useDefaultConfig": false,
  //"oni.bookmarks": ["~/Documents"],
  "oni.loadInitVim": "~/.config/oni/init.vim",
  "editor.fontSize": "16px",
  "editor.fontFamily": "FuraCode Nerd Font",
  "editor.quickOpen.execCommand": "fzf -f ${search}",
  "oni.plugins.prettier": {
    enabled: true,
    formatOnSave: true
  },

  "language.reason.languageServer.configuration": {
    reason: {
      path: {
        refmt: "bsrefmt"
      }
    }
  },

  // UI customizations
  "ui.fontSize": "16px"
};
