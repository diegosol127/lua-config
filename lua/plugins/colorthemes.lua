return {
  { 
    "folke/tokyonight.nvim",
    lazy = false,
    config = function() vim.cmd.colorscheme "tokyonight" end,
  },

  { 
    "catppuccin/nvim",
    lazy = false,
    config = function() vim.cmd.colorscheme "catppuccin" end,l
  },
}
