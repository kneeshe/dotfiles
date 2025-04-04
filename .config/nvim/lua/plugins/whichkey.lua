return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
  ---@type false | "classic" | "modern" | "helix"
  preset = "modern",
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ 
          global = false,
        loop = true,
      })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
