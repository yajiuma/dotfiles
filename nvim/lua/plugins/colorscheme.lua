-- colorschemes
-- https://github.com/topics/neovim-colorscheme

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = false,
        undercurl = true,
      }
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
    },
  },
  {
    "kepano/flexoki-neovim",
  },
  {
    "tanvirtin/monokai.nvim",
  },
  {
    "olimorris/onedarkpro.nvim",
  },
}
