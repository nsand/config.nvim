return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-Space>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>rf", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>rs", builtin.grep_string, {})
      vim.keymap.set("n", "<leader>rg", builtin.git_files, {})
      vim.keymap.set("n", "<leader>b", builtin.buffers, {})
      vim.keymap.set("n", "<C-h>", builtin.help_tags, { desc = "Fuzy finder for help" })

      local actions = require("telescope.actions")
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<esc>"] = actions.close
            }
          }
        }
      })
    end
  }
}
