vim.keymap.set("n", "<Space>", "<NOP>")
vim.g.mapleader = " "

------------------
-- NORMAL MODE
------------------

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

-- toggle goyo
vim.keymap.set("n", "<C-z>", ":Goyo");

-- jump to next line with same indent
vim.keymap.set("n", "<M-k>", ":call search('^'. matchstr(getline('.'), '\\(^\\s*\\)')  .'\\%<' . line('.') . 'l\\S', 'be')<CR>", { silent = true });
vim.keymap.set("n", "<M-j>", ":call search('^'. matchstr(getline('.'), '\\(^\\s*\\)')  .'\\%>' . line('.') . 'l\\S', 'e')<CR>", { silent = true }); 

-- join(removes CR at end of line)
vim.keymap.set("n", "<C-x>", "J")

-- jump half page
vim.keymap.set("n", "<C-j>", "<C-d>")
vim.keymap.set("n", "<C-k>", "<C-u>")


------------------
-- VISUAL MODE
------------------

-- jump half page
vim.keymap.set("v", "<C-j>", "<C-d>")
vim.keymap.set("v", "<C-k>", "<C-u>")

-- join in visual mode 
vim.keymap.set("v", "<C-x>", "J")

-- move lines up and down in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");

-- windows paste in visual mode
vim.keymap.set("v", "<leader>y",  "\"+y")

