return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require('plugins.options.lspserver')
    end,
  }
} 
