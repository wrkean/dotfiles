-- return {
--   {
--     "nvim-treesitter/nvim-treesitter",
--     -- branch = "master",
--     lazy = false,
--     build = ":TSUpdate",
--
--     config = function()
--       require("nvim-treesitter.config").setup({
--         highlight = { enable = true, disable = {
--           "plaintex",
--         } },
--         rainbow = {
--           enable = true,
--         },
--         auto_install = true,
--         playground = {
--           enable = true,
--           updatetime = 25,
--           persist_queries = false,
--         },
--       })
--       vim.api.nvim_set_hl(0, "@variable", { fg = "#9CDCFE" })
--       vim.api.nvim_set_hl(0, "@variable.member", { fg = "#FFAC4C" })
--       vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#E371E3" })
--       vim.api.nvim_set_hl(0, "Operator", { fg = "#C586C0" })
--       vim.hl.priorities.treesitter = 500
--     end,
--   },
--   { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
-- }
--
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Merge your specific settings into the default opts
      opts.highlight = {
        enable = true,
        disable = { "plaintex" },
      }
      opts.auto_install = true

      -- Add rainbow (if you have the rainbow plugin installed)
      opts.rainbow = { enable = true }

      -- Custom Highlight Overrides
      -- vim.api.nvim_set_hl(0, "@variable", { fg = "#9CDCFE" })
      -- vim.api.nvim_set_hl(0, "@variable.member", { fg = "#FFAC4C" })
      -- vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#E371E3" })
      -- vim.api.nvim_set_hl(0, "Operator", { fg = "#C586C0" })
      vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#CBA6F8", italic = true })
      vim.hl.priorities.treesitter = 500
    end,
  },
  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
}
