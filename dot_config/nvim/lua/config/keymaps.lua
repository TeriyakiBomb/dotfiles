-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/confvim.keymap.setig/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", ";", "<cmd>:<cr>")
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
