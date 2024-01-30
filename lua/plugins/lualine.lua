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
    local ok, noice = pcall(require, "noice")
    local x = {}
    if ok then
      -- If noice is installed, use it to add recording info to lualine
      x = {
        {
          noice.api.statusline.mode.get,
          cond = require("noice").api.status.mode.has,
          color = {
            gui = "bold",
            fg = string.format("#%06x", vim.api.nvim_get_hl(0, { name = "Macro" }).fg)
          },
        }
      }
    end
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
        lualine_x = x,
        lualine_y = {'filetype'},
        lualine_z = {'location'}
      },
    })
  end
}
