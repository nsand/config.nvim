-- Import the selected theme and then extract the name
local theme = require('plugins.theme')
local lineTheme = 'auto' -- Start with auto

if (theme[1] ~= nil) then
  lineTheme = theme[1].name
end

return {
  'nvim-lualine/lualine.nvim',
  opts = {
  },
  config = function()
    require('lualine').setup({
      options = {
        theme = lineTheme,
        component_separators = { left = '░', right = '░'},
        section_separators = { left = '▒', right = '▒' }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {},
        lualine_z = {'location'}
      },
    })
  end
}
