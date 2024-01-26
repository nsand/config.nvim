-- Set the color scheme while also updating some highlighting that is dependent
-- on that theme
local set_theme = function (theme)
  vim.cmd.colorscheme(theme)
  vim.api.nvim_set_hl(0, "CursorLineNr", { link = "Debug" })
end

-- Gruvbox
local gruvbox = {
  'ellisonleao/gruvbox.nvim',
  name = 'gruvbox',
  priority = 1000,
  config = function()
    require('gruvbox').setup({
    })
    set_theme('gruvbox')
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
    set_theme('catppuccin-macchiato')
  end
}

-- Nord
local nord = {
  'shaunsingh/nord.nvim',
  name = 'nord',
  priority = 1000,
  config = function()
    set_theme('nord')
  end
}

-- Rose Pine
local rose_pine = {
  'rose-pine/neovim' ,
  name = 'rose-pine',
  priority = 1000,
  config = function()
    set_theme('rose-pine')
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
    set_theme('kanagawa')
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
    set_theme('everforest')
  end
}


return {
  rose_pine
}
