return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local treeconfigs = require("nvim-treesitter.configs")
      treeconfigs.setup({
        ensure_installed = { "bash", "c", "go", "html", "javascript", "json", "lua", "rust", "toml", "yaml" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true }
      })
    end
  }
}
