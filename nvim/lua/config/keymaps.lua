-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "jj", "<Esc><CMD>w<CR>")

vim.keymap.set("n", "gD", vim.lsp.buf.definition, { desc = "See definition" })

-- vim.keymap.set("v", "<leader>cn", ":'<, '>CarbonNow<CR>", { desc = "CarbonNow", silent = true })
vim.keymap.set("v", "<leader>cn", ":CarbonNow<CR>", { desc = "CarbonNow", silent = true })
vim.keymap.set("n", "<C-U>", "<C-U>zz", { silent = true })
vim.keymap.set("n", "<C-D>", "<C-D>zz", { silent = true })

vim.keymap.set("n", "<leader>db", ":DBUI<CR>", { silent = true })
