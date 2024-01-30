return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
       "MunifTanjim/nui.nvim",
    },
    config = function()
      require("noice").setup({
        cmdline = {
          format = {
            -- Don't obscure the text when using search
            search_down = {
              view = "cmdline"
            },
            search_up = {
              view = "cmdline"
            }
          }
        },
        routes = {
          {
            -- Don't show messages every time the file is written
            filter = {
              event = "msg_show",
              kind = "",
              find = "written"
            },
            opts = { skip = true },
          }
        },
        lsp = {
          progress = { enabled = false },
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            -- override the lsp markdown formatter with Noice
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true
          }
        }
      })
      vim.keymap.set("n", "<leader>nd", "<CMD>NoiceDismiss<CR>", { desc = "Dismiss Noice Messages" })
    end
  }
}
