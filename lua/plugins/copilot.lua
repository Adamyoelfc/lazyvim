return {
  -- Configuración para Copilot.lua
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter", -- Cargar solo cuando entres en modo Insertar
    enabled = false,
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },

  -- Configuración para CopilotChat.nvim
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- Asegúrate de que esto esté configurado correctamente
      { "nvim-lua/plenary.nvim" }, -- Requisito de CopilotChat
    },
    opts = {
      debug = true, -- Habilitar depuración
      model = "gpt-4",
      auto_insert_mode = true,
      show_help = true,
      answer_header = "  Copilot ",
      window = {
        width = 0.4,
      },
    },
  },
}
