-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local set = vim.opt

set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4

set.clipboard = ''
