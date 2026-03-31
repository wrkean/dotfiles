return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local on_attach = function(_, _)
      if not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }) then
        vim.lsp.inlay_hint.enable(true, { bufnr = 0 })
      end
    end

    vim.diagnostic.config({
      virtual_text = {
        prefix = "•",
        spacing = 4,
      },
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })

    lspconfig.clangd.setup({
      root_markers = { ".git", ".clangd", "compile-commands.json", "CMakeLists.txt" },
    })
    lspconfig.pyright.setup({
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "standard",
            reportOptionalMemberAccess = "none",
          },
        },
      },
    })
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = { enable = false },
        },
      },
    })
    lspconfig.rust_analyzer.setup({
      on_attach = on_attach,
      settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            enable = true,
            refreshOnInsertMode = true,
          },
          cargo = { allFeatures = true },
          checkOnSave = { command = "clippy" },
          -- semanticHighlighting = true,
        },
      },
    })
    lspconfig.zls.setup({
      settings = {
        zls = {
          enable_build_on_save = false,
        },
      },
    })

    vim.lsp.config("vtsls", {})
    lspconfig.jdtls.setup({})
    lspconfig.gopls.setup({})
    lspconfig.gleam.setup({})
    lspconfig.emmet_language_server.setup({})

    -- vim.lsp.config("neocmake", {})
    vim.lsp.config("djls", {})
    vim.lsp.config("djlsp", {})
    vim.lsp.config("cssls", {})
    vim.lsp.config("html", {})
    vim.lsp.config("postgres_lsp", {})

    vim.lsp.enable("vtsls")
    -- vim.lsp.enable("neocmake")
    -- vim.lsp.enable("djls")
    -- vim.lsp.enable("djlsp")
    vim.lsp.enable("cssls")
    vim.lsp.enable("postgres_lsp")
    -- vim.lsp.enable("html")
  end,
}
