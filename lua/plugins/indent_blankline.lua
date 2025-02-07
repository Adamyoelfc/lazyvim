return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    scope = {
      enabled = true, -- Habilitar el enfoque en la línea actual
      show_start = false, -- No mostrar el inicio del alcance
      show_end = false, -- No mostrar el final del alcance
      highlight = "IndentBlanklineContext", -- Personaliza el color si lo deseas
    },
  },
  config = function()
    require("ibl").setup({
      exclude = {
        filetypes = {
          "dashboard",
        },
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = "IndentBlanklineContext",
      },
      indent = {
        char = "│", -- Caracter de las líneas de indentación
      },
    })
  end,
  vim.cmd([[
      highlight IndentBlanklineContext guifg=#FFD700 gui=nocombine
    ]]),
}
