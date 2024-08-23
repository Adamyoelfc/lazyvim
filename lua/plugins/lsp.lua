return {
  -- Mason setup configuration
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason LSPConfig setup configuration
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- -- Add other LSP servers you need here, but exclude ruby-lsp
          -- "solargraph",
          -- -- "ruby-lsp",  -- This is intentionally commented out
        },
        setup_handlers = {
          function(server_name)
            -- Exclude ruby-lsp from being setup by Mason
            -- if server_name == "solargraph" then
            --   require("lspconfig")[server_name].setup({
            --     cmd = { "solargraph", "stdio" }, -- Use the globally installed solargraph
            --   })
            -- end

            if server_name ~= "ruby-lsp" then
              require("lspconfig")[server_name].setup({})
            end
            -- exclude vtsls autoinstall for mason
            if server_name ~= "vtsls" then
              require("lspconfig")[server_name].setup({})
            end
          end,
        },
      })
    end,
  },
}
