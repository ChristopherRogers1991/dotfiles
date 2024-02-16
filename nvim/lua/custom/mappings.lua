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
    ["<leader>dd"] = {"<cmd>lua vim.lsp.buf.definition() <CR>", "Go to Definition"},
    ["<leader>r"] = {"<cmd>lua vim.lsp.buf.references() <CR>", "Show References"},
    ["<leader>R"] = {"<cmd>lua vim.lsp.buf.rename() <CR>", "Refactor: Rename"},
    ["<C-p>"] = {"<cmd>TroubleToggle<CR>", "Show/Hide Problems"},
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

M.dap = {
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<leader>dr"] = {"<cmd> lua require('dap').continue() <CR>", "Launch File"},
    ["<leader>do"] = {"<cmd> lua require('dapui').open() <CR>", "Open Debug UI"},
    ["<leader>dc"] = {"<cmd> lua require('dapui').close() <CR>", "Close Debug UI"}
  }
}

M.dap_python = {
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M
