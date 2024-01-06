-- Gruvbox
local gruvbox = {
  'ellisonleao/gruvbox.nvim',
  name = 'gruvbox',
  priority = 1000,
  config = function()
    require('gruvbox').setup({
    })
    vim.cmd.colorscheme 'gruvbox'
  end
}
-- Catppuccin
local catppuccin = {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000 ,
  config = function() 
    require('catppuccin').setup({
      flavor = 'macchiato',
      integrations = {
        notify = true,
        harpoon = true,
        neotree = true,
        which_key = true
      }
    })
    vim.cmd.colorscheme 'catppuccin-macchiato'
  end
}

-- Nord
local nord = {
  'shaunsingh/nord.nvim',
  name = 'nord',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'nord'
  end
}

-- Rose Pine
local rose_pine = {
  'rose-pine/neovim' ,
  name = 'rose-pine',
  priority = 1000,
  config = function()
    require('rose-pine').setup({})
    vim.cmd.colorscheme 'rose-pine'
  end
}

-- Kanagawa
local kanagawa = {
  'rebelot/kanagawa.nvim',
  name = 'kanagawa',
  config = function()
    require('kanagawa').setup({
      theme = 'wave'
    })
    vim.cmd.colorscheme 'kanagawa'
  end
}

-- Everforest
local everforest = {
  'neanias/everforest-nvim',
  lazy = false,
  priority = 1000,
  name = 'everforest',
  config = function()
    require('everforest').setup({})
    vim.cmd.colorscheme 'everforest'
  end
}

return {
  rose_pine
}
