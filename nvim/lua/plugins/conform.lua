return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      rust = { "rustfmt" },
      zig = { "zigfmt" },
      html = { "djlint", "prettierd" },
      htmldjango = { "djlint" },
    },
    formatters = {
      djlint = {
        prepend_args = { "--indent", "2" },
      },
    },
  },
}
