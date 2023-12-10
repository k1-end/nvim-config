vim.api.nvim_command([[
  autocmd FileType php lua vim.lsp.start({
  name = 'intelephense',
  cmd = {'/home/keyvan/.nvm/versions/node/v18.14.2/bin/intelephense', '--stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'.env.example'}, { upward = true })[1]),
})
]])