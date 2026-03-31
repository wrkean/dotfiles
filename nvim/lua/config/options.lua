-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt

-- UI
opt.number = true -- line numbers
opt.relativenumber = true -- relative line numbers
opt.cursorline = true -- highlight current line
opt.signcolumn = "yes" -- always show sign column (for git, LSP, etc.)
opt.termguicolors = true -- enable true colors

-- Indentation
opt.expandtab = true -- tabs → spaces
opt.tabstop = 4 -- number of spaces a tab counts for
opt.shiftwidth = 4 -- spaces for each indentation step
opt.smartindent = true -- smarter auto-indenting
-- opt.cindent = true

-- Search
opt.ignorecase = true -- case insensitive search…
opt.smartcase = true -- … unless search contains capitals
opt.hlsearch = true -- highlight matches
opt.incsearch = true -- live search as you type

-- Editing
opt.wrap = true -- line wrapping
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.sidescrolloff = 8
opt.sidescrolloff = 8
opt.sidescrolloff = 8
opt.clipboard = "unnamedplus" -- use system clipboard

-- Splits
opt.splitbelow = true -- horizontal splits open below
opt.splitright = true -- vertical splits open right

-- Performance
opt.updatetime = 250 -- faster updates (affects CursorHold)
opt.timeoutlen = 500 -- shorter timeout for keymaps
