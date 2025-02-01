-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

local chat = require("CopilotChat")

-- Keymap configuration for copilot -------------------------------------
vim.api.nvim_set_keymap("n", "<leader>cO", ':lua require("CopilotChat").open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>cO", ':lua require("CopilotChat").open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cc", ':lua require("CopilotChat").close()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>ct",
  ':lua require("CopilotChat").toggle()<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>cr", ':lua require("CopilotChat").reset()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "v",
  "<leader>ce",
  ':lua require("CopilotChat").ask("Explain how it works.")<CR>',
  { noremap = true, silent = true }
)

-- Custom options keymaps
vim.api.nvim_set_keymap(
  "n",
  "<leader>cof",
  ':lua require("CopilotChat").open({ window = { layout = "float", title = "My Title" } })<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ctf",
  ':lua require("CopilotChat").toggle({ window = { layout = "float", title = "My Title" } })<CR>',
  { noremap = true, silent = true }
)

-- move line up
vim.api.nvim_set_keymap("v", "K", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })

-- move line down
vim.api.nvim_set_keymap("v", "J", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })

-- end copilot -----------------------------------------------------

-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>caq",
--   ':lua require("CopilotChat").ask("Explain how it works.", { selection = require("CopilotChat.select").buffer })<CR>',
--   { noremap = true, silent = true }
-- )
-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>cai",
--   ':lua require("CopilotChat").ask("Show me something interesting", { callback = function(response) print("Response:", response) end })<CR>',
--   { noremap = true, silent = true }
-- )

vim.api.nvim_set_keymap("n", "<leader>ft", ":terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { noremap = true, silent = true }) -- Salir con Esc Esc

-- Mapeos para moverte entre ventanas con Ctrl+h, Ctrl+l, etc.
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', { noremap = true, silent = true }) -- Izquierda
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true, silent = true }) -- Derecha
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', { noremap = true, silent = true }) -- Abajo
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true }) -- Arriba
