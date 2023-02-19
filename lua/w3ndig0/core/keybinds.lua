-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
-- use jk to exit insert mode
---------------------
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement


--Arrow keys remove
keymap.set("i", "<Up>", "<Nop>") 
keymap.set("i", "<Right>", "<Nop>") 
keymap.set("i", "<Down>", "<Nop>") 
keymap.set("i", "<Left>", "<Nop>")

keymap.set("n", "<Up>", "<Nop>")
keymap.set("n", "<Down>", "<Nop>") 
keymap.set("n", "<Left>", "<Nop>")
keymap.set("n", "<Right>", "<Nop>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance

-- telescope git commands 
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

keymap.set("n", "<leader>F", ":TodoTelescope keywords=TODO<CR>")
keymap.set("n", "<leader>ft", ":TodoTelescope keywords=FIX<CR>")

keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")

--TEXT KOMMENTAR:
keymap.set("i", "<C-f>", "--'TODO: ")
keymap.set("i", "<C-q>", "--'NOTE: ")
keymap.set("i", "<C-b>", "--'FIX: ")

