return {
  {
    'folke/todo-comments.nvim',
    event = 'BufEnter',
    dependencies = { 'nvim-lua/plenary.nvim', 'MunifTanjim/nui.nvim'},
    config = function()
      require('todo-comments').setup()
      vim.keymap.set('n', '<leader>ft', '<CMD>TodoTelescope keywords=TODO,FIXME<CR>', { desc = 'Find TODOs and FIXMEs' })
      vim.keymap.set('n', '<leader>fb', '<CMD>TodoTelescope keywords=BUG,HACK<CR>', { desc = 'Find BUGs and HACKs' })
    end
  }
}
