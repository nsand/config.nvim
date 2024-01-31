return {
  {
    "lewis6991/gitsigns.nvim",
    event = "BufEnter",
    config = function()
      local gitsigns = require("gitsigns")
      gitsigns.setup({
        current_line_blame_opts = {
          delay = 200
        }
      })
      vim.keymap.set("n", "<leader>gtb", gitsigns.toggle_current_line_blame, { desc = "Toggle current line blame" })
      vim.keymap.set("n", "<leader>gb", function() gitsigns.blame_line{full=true} end, { desc = "Show blame" })
      vim.keymap.set("n", "<leader>gph", gitsigns.preview_hunk, { desc = "Preview the hunk" })
    end
  }
}
