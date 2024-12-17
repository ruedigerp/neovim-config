return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      local telescope = require("telescope")

      -- Telescope setup
      telescope.setup({
        defaults = {
          hidden = true, -- Aktiviert die Anzeige von versteckten Dateien
          file_ignore_patterns = { "%.git/" },
          respect_gitignore = true,
        }
      })

      -- Keybindings
      vim.keymap.set('n', '<C-p>', function()
        builtin.find_files({ hidden = true }) -- Versteckte Dateien für `find_files` anzeigen
      end, {})

      -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fg', function()
        builtin.live_grep({ no_ignore = false }) -- Respektiere .gitignore
      end, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup ({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
}

