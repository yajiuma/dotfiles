-- colorschemes
-- https://github.com/topics/neovim-colorscheme

return {
  "craftzdog/solarized-osaka.nvim",
  "rebelot/kanagawa.nvim",
  "kepano/flexoki-neovim",
  "tanvirtin/monokai.nvim",
  "olimorris/onedarkpro.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = false,
      undercurl = true,
    }
  end,
}
