return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          lua = { "stylua" },
          json = { { "prettierd", "prettier", stop_after_first = true } },
          java = { "google-java-format" },
          markdown = { { "prettierd", "prettier", stop_after_first = true } },
          bash = { "beautysh" },
          proto = { "buf" },
          rust = { "rustfmt" },
          sh = { "shellcheck" },
          go = { "gofumpt" },
        },
      })

      vim.keymap.set({ "n", "v" }, "<leader>l", function()
        conform.format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end, { desc = "Format file or range (in visual mode)" })
    end,
  }
