return {
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   enabled = false,
  --   version = "*",
  --   config = function ()
  --     require("ibl").setup({
  --       indent = {
  --         char = "▏"
  --       }
  --     })
  --   end
  -- },
  {
    "echasnovski/mini.indentscope",
    version = "*",
    config = function ()
      local indent = require("mini.indentscope")
      indent.setup({
        symbol = "▎",
        --symbol = "▏",
        draw = {
          animation = indent.gen_animation.none(),
          delay = 30
        },
        options = {
          try_as_border = true
        }
      })
      vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { link = "Structure" })
    end
  }
}
