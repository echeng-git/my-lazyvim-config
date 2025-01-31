-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Ctrl+Backspace - delete previous in insert mode
vim.api.nvim_set_keymap("i", "<C-h>", "<C-w>", { noremap = true, silent = true })
