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
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function ()
      local context = require("treesitter-context")
      context.setup({
      })
      context.toggle()
      vim.keymap.set("n", "<leader>ct", "<CMD>:TSContextToggle<CR>")
    end
  }
}
