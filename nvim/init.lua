-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local is_wsl = os.getenv("WSL_DISTRO_NAME") ~= nil

if is_wsl then
  vim.g.clipboard = {
    name = "WSLClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = true,
  }
end

vim.o.guifont = "FiraCode Nerd Font:h12"

vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-=>", function()
  change_scale_factor(1.25)
end)
vim.keymap.set("n", "<C-->", function()
  change_scale_factor(1/1.25)
end)

if vim.g.neovide then
  local keymapOpts = {
    silent = true,
    noremap = true
  }
  vim.keymap.set({ "n", "v", "i" }, "<C-v>", "\"*p", keymapOpts)
  vim.keymap.set({ "n", "v", "i" }, "<C-c>", "\"*y", keymapOpts)
  vim.keymap.set({ "n", "v", "i" }, "<C-x>", "\"*x", keymapOpts)
end
