return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_instaled = {"c", "lua", "vim", "rust", "haskell", "markdown", "java"},
      highlight = {enable = true},
      indent = {enable = true},
    })
  end
}
