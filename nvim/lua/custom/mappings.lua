---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.aaa = {
  -- Custom mappings for cmp (code completion) go in overrides

  n = {
    ["<C-d>"] = {"<cmd>lua vim.lsp.buf.hover() <CR>", "Show Documentation"},
    ["<leader>d"] = {"<cmd>lua vim.lsp.buf.definition() <CR>", "Go to Definition"},
    ["<leader>r"] = {"<cmd>lua vim.lsp.buf.references() <CR>", "Show References"},
    ["<leader>R"] = {"<cmd>lua vim.lsp.buf.rename() <CR>", "Refactor: Rename"},
    -- This is CTRL+/ (see https://vi.stackexchange.com/a/26617)
    ["<C-_>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },
  v = {
    -- This is CTRL+/ (see https://vi.stackexchange.com/a/26617)
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
  -- i = {
  --   ["<Tab>"] = {
  --     function()
  --       require("cmp").mapping.confirm({select = true})
  --     end
  --   },
  -- }
}

return M
