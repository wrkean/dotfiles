return {
  "sphamba/smear-cursor.nvim",
  disable = true,
  opts = {
    stiffness = 0.5,
    trailing_stiffness = 0.75,
    distance_stop_animating = 0.1,
  },

  config = function(_, opts)
    require("smear_cursor").setup(opts)
  end,
}
