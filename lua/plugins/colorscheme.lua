return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- add everforest
  { "sainnhe/everforest" },

  {
    "catppuccin/nvim",
    opts = {
      transparent_background = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
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

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
