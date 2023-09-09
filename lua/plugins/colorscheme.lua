return {
  -- Add onedark
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    opts = {
      transparent = true,
    },
  },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },

  -- Set notify background_colour
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
}
