return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "css",
      "javascript",
      "html",
    }, {
      rgb_fn = true,
      css = true,
      css_fn = true,
      mode = "background",
    })
  end,
}
