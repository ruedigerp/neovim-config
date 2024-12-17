return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true, -- Zeige standardmäßig alle ausgeblendeten Dateien
          hide_dotfiles = false, -- Zeige .dotfiles wie .gitignore
          hide_gitignored = false, -- Zeige Dateien, die in der .gitignore stehen
          hide_by_name = { -- Optional: spezifische Dateien oder Ordner ausblenden
            -- "node_modules", "dist"
          },
        },
      },
    })

    -- Keymap für Neo-Tree
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>', {} )
  end
}

-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   branch = "v3.x",
--   dependencies = {
--    "nvim-lua/plenary.nvim",
--    "nvim-tree/nvim-web-devicons",
--    "MunifTanjim/nui.nvim",
--   },
--   config = function()
--     vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>', {} )
--   end
-- }
