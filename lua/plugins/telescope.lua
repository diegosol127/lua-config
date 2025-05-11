return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require('telescope').setup {
        defaults = {
          winblend = 25
        }
      }
      local builtin = require('telescope.builtin')
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
      vim.keymap.set("n", "<leader>fd", builtin.find_files, { desc = "Find files in cwd" })
      vim.keymap.set("n", "<leader>ft", builtin.colorscheme, { desc = "Color Themes" })
      vim.keymap.set("n", "<leader>en", function()
        builtin.find_files {
          cwd = vim.fn.stdpath("config"),
          { desc = "Find files in .config/nvim/" }
        }
      end)
    end,
  }
}
