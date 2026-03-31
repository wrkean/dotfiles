return {
  "ellisonleao/carbon-now.nvim",
  lazy = true,
  cmd = "CarbonNow",
  opts = {
    options = {
      titlebar = "Code Snapshot",
      font_family = "JetBrains Mono",
      theme = "material",
      padding_horizontal = "100px",
      padding_vertical = "100px",
    },
  },
  config = function(_, opts)
    require("carbon-now").setup(opts)
  end,
}
