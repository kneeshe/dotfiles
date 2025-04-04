return {
  {'akinsho/toggleterm.nvim', 
  version = "*", 
  opts = {
    config = function()
      require("toggleterm").setup{
        shade_terminals = false
      }
    end,
  }
  }
}
