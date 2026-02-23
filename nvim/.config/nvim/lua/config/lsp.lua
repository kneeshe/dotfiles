-- Enable LSP server
vim.lsp.enable({
  'lua_ls',
  'clangd',
  'nixd',
  'pyright',
  'rust-analyzer',
})

vim.diagnostic.config( { virtual_lines = { current_line = true, }, } )
