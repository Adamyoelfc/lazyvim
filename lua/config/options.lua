-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.pumblend = 0

return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    -- Insert the emoji source
    table.insert(opts.sources, { name = "emoji" })

    -- Add window configuration for completion and documentation
    opts.window = {
      completion = require("cmp").config.window.bordered(), -- Adds borders to the completion window
      documentation = require("cmp").config.window.bordered(), -- Adds borders to the documentation window
    }

    -- Add experimental settings like ghost_text
    opts.experimental = {
      ghost_text = false, -- Enable ghost text
    }
    local cmp_window = require("cmp.config.window")
    local window = {
      completion = cmp_window.bordered(),
      documentation = cmp_window.bordered(),
    }
  end,
}
