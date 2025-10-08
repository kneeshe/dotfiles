-- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig').pyright.setup({
    capabilities = capabilities
  })
  require('lspconfig').rust_analyzer.setup {
    capabilities = capabilities,
    settings = {
      ['rust-analyzer'] = {},
    },
  } 
  require('lspconfig').clangd.setup {
    capabilities = capabilities
  }
  require('lspconfig').jdtls.setup {}
  

-- vim.lsp.config("pyright")
-- vim.lsp.enable({"pyright"})

-- vim.lsp.config("rust_analyzer", {capabilities = capabilities, settings = {['rust-analyzer']}})
-- vim.lsp.enable({"rust_analyzer"})

-- vim.lsp.config("clangd", {capabilities = capabilities})
-- vim.lsp.enable({"clangd"})

-- vim.lsp.config("jdtls")
-- vim.lsp.enable({"jdtls"})
