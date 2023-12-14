vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':noh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
        vim.cmd("autocmd CursorHold  *.php lua vim.lsp.buf.document_highlight()")
        vim.cmd("autocmd CursorHoldI *.php lua vim.lsp.buf.document_highlight()")
        vim.cmd("autocmd CursorMoved *.php lua vim.lsp.buf.clear_references()")
    end,
})
vim.keymap.set("n", "<leader>nrw", vim.cmd.Ex) -- netrw
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- moving lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- moving lines
vim.keymap.set("n", "J", "mzJ`z") -- joining lines
 
