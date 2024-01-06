return {
  -- TODO: Fix me
  {
    'rcarriga/nvim-notify',
    config = function()
      local notify = require('notify')
      notify.setup({
        render = 'compact',
        stages = 'slide'
      })
      -- Set up nvim-notify as the default notifier
      vim.notify = notify
    end
  }
}
