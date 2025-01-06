return {
  -- Add onedark
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    opts = {
      transparent = true,
    },
  },

  -- Tokyonight config
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
