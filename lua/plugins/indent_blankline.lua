return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {},
  -- config = function()
  --   -- Define very subtle highlight groups
  --   vim.cmd([[
  --     highlight IndentBlanklineIndent1 guifg=#1c1c1c gui=nocombine
  --     highlight IndentBlanklineIndent2 guifg=#1c1c1c gui=nocombine
  --     highlight IndentBlanklineContext guifg=#3c3c3c gui=nocombine
  --   ]])
  --
  --   -- Set up the plugin with your desired configuration
  --   require("ibl").setup({
  --     indent = {
  --       -- char = "|",
  --       highlight = {
  --         "IndentBlanklineIndent1",
  --         -- "IndentBlanklineIndent2",
  --       },
  --       smart_indent_cap = true,
  --     },
  --     scope = {
  --       enabled = false,
  --       show_start = false,
  --       show_end = false,
  --       highlight = "IndentBlanklineContext",
  --     },
  --     exclude = {
  --       filetypes = {
  --         "help",
  --         "terminal",
  --         "dashboard",
  --         "packer",
  --         "lspinfo",
  --         "TelescopePrompt",
  --       },
  --     },
  --   })
  -- end,
}
