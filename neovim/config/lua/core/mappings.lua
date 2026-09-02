vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Moving between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Moving between tabs
vim.keymap.set("n", "H", "gT")
vim.keymap.set("n", "L", "gt")

-- Fixing the & command
vim.keymap.set("n", "&", ":&&<CR>")
vim.keymap.set("x", "&", ":&&<CR>")

-- Fixing history navigation
vim.keymap.set("c", "<C-p>", "<Up>")
vim.keymap.set("c", "<C-n>", "<Down>")

-- Reindexing
vim.keymap.set("n", "<F5>", ":!ctags -R<CR>")
