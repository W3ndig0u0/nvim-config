local opt = vim.opt -- för conciseness

--Line nummer
opt.relativenumber = true
opt.number = true

--Tabs & indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true


opt.scrolloff = 10
opt.updatetime = 50

--line wrap
opt.wrap = false

--sökning
opt.ignorecase = true
opt.smartcase = true

--Cursor line
opt.cursorline = false

--utseende
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--Backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")


--Split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")




