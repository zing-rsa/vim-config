
vim.keymap.set("n", "<Space>", "<NOP>")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "K", ":m .-2<CR>==");
vim.keymap.set("n", "J", ":m .+1<CR>==");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");

vim.keymap.set("n", "<leader>y",  "\"+y")
vim.keymap.set("n", "<leader>p",  "\"+p")

vim.keymap.set("v", "<leader>y",  "\"+y")
