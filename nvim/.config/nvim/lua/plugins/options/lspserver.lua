-- Configuração dos LSP servers usando a nova API do nvim-lspconfig 3.0.0+
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configurar cada servidor
vim.lsp.config.pyright = {
  capabilities = capabilities,
}

vim.lsp.config.rust_analyzer = {
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {},
  },
}

vim.lsp.config.clangd = {
  capabilities = capabilities,
}

vim.lsp.config.jdtls = {
  capabilities = capabilities,
}

-- Habilitar os servidores
vim.lsp.enable({
  'pyright',
  'rust_analyzer', 
  'clangd',
  'jdtls'
})
