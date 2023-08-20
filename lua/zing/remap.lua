vim.keymap.set("n", "<Space>", "<NOP>")
vim.g.mapleader = " "

------------------
-- NORMAL MODE
------------------

-- remap esc
vim.keymap.set("n", "<ESC>", "<cmd> silent :noh<CR><ESC>")

-- prevent overwrite clip when pasting in view
vim.keymap.set("x", "p", "\"_dP")

-- override for tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- override for tmux-homenizer
vim.keymap.set("n", "<C-h>", "<cmd>silent !tmux neww tmux-homenizer<CR>")

-- open project view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up and down in normal mode
vim.keymap.set("n", "K", ":m .-2<CR>==", { silent = true });
vim.keymap.set("n", "J", ":m .+1<CR>==", { silent = true });

-- duplicate line down/up
vim.keymap.set("n", "<M-J>", "yyp");
vim.keymap.set("n", "<M-K>", "yyp");

-- copy pasting for windows
vim.keymap.set("n", "<leader>y",  "\"+y")
vim.keymap.set("n", "<leader>p",  "\"+p")

-- add newline in nornmal mode
vim.keymap.set("n", "<Enter>", "o<ESC>");

-- jump to next line with same indent
vim.keymap.set("n", "<M-k>", ":call search('^'. matchstr(getline('.'), '\\(^\\s*\\)')  .'\\%<' . line('.') . 'l\\S', 'be')<CR>", { silent = true });
vim.keymap.set("n", "<M-j>", ":call search('^'. matchstr(getline('.'), '\\(^\\s*\\)')  .'\\%>' . line('.') . 'l\\S', 'e')<CR>", { silent = true });

-- join(removes CR at end of line)
vim.keymap.set("n", "<C-x>", "J")

-- center screen after half jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
------------------
-- VISUAL MODE
------------------

-- center screen after half jump
vim.keymap.set("v", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")

-- join in visual mode 
vim.keymap.set("v", "<C-x>", "J")

-- move lines up and down in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");

-- windows paste in visual mode
vim.keymap.set("v", "<leader>y",  "\"+y")


