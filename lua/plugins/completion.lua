return {
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    -- build = "make install_jsregexp"
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "hrsh7th/cmp-nvim-lua"
  },
  {
    "onsails/lspkind.nvim"
  },
  -- Used to automatically close ()
  -- {
  --   'windwp/nvim-autopairs',
  --   event = "InsertEnter",
  --   opts = {} -- this is equalent to setup({}) function
  -- },
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    config = function()
      local snips = require("luasnip")
      local lspkind = require("lspkind")
      local cmp = require("cmp")
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end
      cmp.setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",
            menu = {
              nvim_lsp = "[]",
              luasnip = "[]",
              nvim_lua = "LUA"
            },
            maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
            ellipsis_char = "…",
            show_labelDetails = true,
          })
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered()
        },
        snippet = {
          expand = function(args)
            snips.lsp_expand(args.body)
          end
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "nvim_lua" },
          { name = "luasnip" }
        }),
        mapping = {
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              if #cmp.get_entries() == 1 then
                cmp.confirm({ select = true })
              else
                cmp.select_next_item()
              end
            elseif snips.expand_or_jumpable() then
              snips.expand_or_jump()
            elseif has_words_before() then
              cmp.complete()
              if #cmp.get_entries() == 1 then
                cmp.confirm({ select = true })
              end
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif snips.jumpable(-1) then
              snips.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<C-Tab>"] = cmp.mapping(function (fallback)
            if cmp.visible() then
              cmp.confirm({ select = true })
            else
              fallback()
            end
          end),
          ["<CR>"] = cmp.mapping({
            i = function(fallback)
              if cmp.visible() and cmp.get_active_entry() then
                cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
              else
                fallback()
              end
            end,
            s = cmp.mapping.confirm({ select = true }),
            c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
          }),
        }
      })
    end
  }
}
