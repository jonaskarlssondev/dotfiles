vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

-- Share clipboard with OS
vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- ignore case while searching unless \C or one or more capital letter in search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- col left for icons etc
vim.opt.signcolumn = 'yes'

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type
vim.opt.inccommand = 'split'
