return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local treeconfigs = require("nvim-treesitter.configs")
      treeconfigs.setup({
        ensure_installed = {
          "bash",
          "c",
          "go",
          "html",
          "java",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "regex",
          "rust",
          "toml",
          "typescript",
          "vim",
          "yaml"
        },
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
