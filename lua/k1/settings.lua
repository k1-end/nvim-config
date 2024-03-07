vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4 -- tab size
vim.opt.softtabstop = 4 -- how many tabs to insert when pressing tab
vim.opt.shiftwidth = 4 -- auto-indentation 
vim.opt.expandtab = true -- replace tabs with spaces
vim.o.updatetime = 100

vim.opt.smartindent = true

vim.opt.wrap = false

vim.cmd("set foldmethod=indent")
vim.cmd("colorscheme tokyonight")
vim.cmd("autocmd BufRead * normal zr")
vim.cmd("autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>")
vim.o.ignorecase = true

-- vim.cmd("set clipboard=unnamedplus") set clipboard to synct

