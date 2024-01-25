return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "gopls", "lua_ls", "rust_analyzer" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup({})
      lspconfig.lua_ls.setup({
        on_attach = function()
        end
      })
      lspconfig.rust_analyzer.setup({
        on_attach = function(client)
          -- require("completion").on_attach(client)
        end,
        settings = {
          ["rust-analyzer"] = {
            cmd = {
              "rustup", "run", "stable", "rust-analyzer"
            },
            cargo = {
              allFeatures = true
            },
            procMacro = {
                enable = true
            }
          }
        }
      })

      -- Keybindings
      vim.opt.completeopt = { "menu" }
      vim.keymap.set("i", "<C-s>", vim.lsp.buf.completion, { desc = "Get auto completion" })
      vim.keymap.set("n", "<leader>ci", vim.lsp.buf.hover, { desc = "Get info about current symbol under the cursor" })
      vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to the definition under the cursor" })
      vim.keymap.set("n", "<leader>ct", vim.lsp.buf.type_definition, { desc = "Go to the type definition under the cursor" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Open the code actions for the buffer" })
      vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename the symbol under the cursor" })

      vim.keymap.set("n", "<leader>ds", "<CMD>Telescope diagnostics<CR>", {})
      vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to the next problem" })
      vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to the previous problem" })
    end
  }
}
