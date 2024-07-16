vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
-- vim.opt["guicursor"] = ""
vim.o.guicursor = 'n-v-c-sm-i-ci-ve:block'

vim.api.nvim_command('hi! link NormalFloat Normal')

--vim.opt.colorcolumn = "80"

vim.api.nvim_set_var('netrw_bufsettings', 'noma nomod nu nowrap ro nobl')
vim.cmd("set spell spelllang=en_us")
