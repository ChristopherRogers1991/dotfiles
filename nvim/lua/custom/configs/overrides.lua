local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "java",
    "typescript",
    "tsx",
    "c",
    "python",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- python
    "python-lsp-server",
    "debugpy",

    -- Java
    "jdtls",

    -- Bash
    "bash-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.trouble = {}

local cmp = require("cmp")

M.cmp = {
    mapping = {
      ['<Tab>'] = cmp.mapping.confirm({ select = true }),
      ['<CR>'] = function (callback)
        callback()
      end,
    },
}

M.nvimdap = {}

M.nvimdappython = {}

return M
