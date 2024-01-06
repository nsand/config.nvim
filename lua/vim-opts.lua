vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set list")
vim.cmd("set lcs+=leadmultispace:∙,tab:_,trail:∙,eol:↲")
vim.g.mapleader = " "
vim.keymap.set("n", "<Esc><Esc>", "<Esc>:noh<CR><Esc>", {})
vim.keymap.set("n", "<leader>.", ":cd %:h<CR>", {})
vim.cmd("set hlsearch")
vim.opt.relativenumber = true
