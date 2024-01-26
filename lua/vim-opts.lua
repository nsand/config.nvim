-- Indent
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Line Numbers
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.number = true
vim.opt.relativenumber = true

-- Show whitespace
vim.opt.list = true
vim.cmd("set lcs+=leadmultispace:∙,tab:_,trail:∙,eol:↲")

-- Searching
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Backups, Undo, and more
vim.opt.swapfile = false
vim.opt.backup = false
-- Long-running undoing, not sure if it's worth it
-- vim.opt.undodir = os.getenv("HOME") .. '/.vim/undos'
-- vim.opt.undofile = true

-- Some keymappings
vim.g.mapleader = " "
vim.keymap.set("n", "<Esc><Esc>", "<Esc>:noh<CR><Esc>", {})
vim.keymap.set("n", "<leader>.", ":cd %:h<CR>", {})
