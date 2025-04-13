return {
  -- {
  --   "navarasu/onedark.nvim",
  --   name = "onedark",
  --   opts = {
  --     transparent = true,
  --     lualine = {
  --       transparent = true,
  --     },
  --     diagnostics = {
  --       background = false,
  --     },
  --   },
  -- },

  -- Tokyonight config
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        hl.LspInlayHint = {
          fg = "#545c7e",
        }
        hl.CmpDocumentation = {
          bg = "#1e2030",
          fg = c.fg_float,
        }
        hl.LineNrAbove = {
          fg = "#545c7e",
        }
        hl.LineNrBelow = {
          fg = "#545c7e",
        }
      end,
    },
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
