return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  {
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      require("night-owl").setup()
      vim.cmd.colorscheme("github_dark")
    end,
  },

  -- add everforest
  { "sainnhe/everforest" },
  {
    "navarasu/onedark.nvim",
    opts = {
      -- transparent_background = true,
      -- styles = {
      --   sidebars = "transparent",
      --   floats = "transparent",
      -- },
    },
  },

  -- {
  --   "sainnhe/everforest",
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent"
  --     }
  --   }
  -- },

  -- Install without configuration
  { "projekt0n/github-nvim-theme", name = "github-theme" },

  -- Or with configuration
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
        }
      })

      vim.cmd("colorscheme github_dark")
    end,
  },

  -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "github_dark",
  --   },
  -- },
}
