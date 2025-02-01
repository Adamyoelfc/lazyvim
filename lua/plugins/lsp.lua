return {

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {
          cmd = {"solargraph", "stdio" },
          root_dir = require("lspconfig.util").root_pattern("Gemfile", ".git"),
        },
      },
    },
  },

  -- Mason setup configuration
  -- {
  --   "williamboman/mason.nvim",
  --   config = function()
  --     require("mason").setup()
  --   end,
  --   opts = { ensure_installed = { "erb-formatter", "erb-lint" } },
  -- },

  -- Mason LSPConfig setup configuration
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- ensure_installed = {
      --
      -- },
      authomatic_installation = {
        exclude = { "solargraph" },
      }

    }
  },
}
