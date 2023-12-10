vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':noh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    end,
  })