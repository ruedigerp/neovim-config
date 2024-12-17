
return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require ("nvim-treesitter.configs")
    config. setup ({
      ensure_installed = {"lua", "javascript", "go", "dockerfile", "helm", "ssh_config", "terraform", "tmux", "toml", "yaml"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}