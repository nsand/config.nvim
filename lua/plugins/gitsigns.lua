return {
  {
    'lewis6991/gitsigns.nvim',
    event = 'BufEnter',
    config = function()
      local gitsigns = require('gitsigns')
      gitsigns.setup()
      vim.keymap.set('n', '<leader>gtb', gitsigns.toggle_current_line_blame, { desc = 'Toggle current line blame' })
      vim.keymap.set('n', '<leader>gb', function() gitsigns.blame_line{full=true} end, { desc = 'Show blame' })
    end
  }
}
