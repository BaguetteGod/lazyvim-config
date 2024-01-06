return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          -- exclude a filetype from the default_config
          filetypes_exclude = { "markdown" },
          -- add additional filetypes to the default_config
          filetypes_include = { "templ" },
          -- to fully override the default_config, change the below
          -- filetypes = {}
          init_options = {
            templ = "html",
          },
        },
        html = {
          filetypes_include = {
            "templ",
          },
          init_options = {
            templ = "html",
          },
        },
        htmx = {
          filetypes_include = {
            "templ",
          },
          init_options = {
            templ = "html",
          },
        },
      },
      setup = {
        tailwindcss = function(_, opts)
          local tw = require("lspconfig.server_configurations.tailwindcss")
          opts.filetypes = opts.filetypes or {}

          -- Add default filetypes
          vim.list_extend(opts.filetypes, tw.default_config.filetypes)

          -- Remove excluded filetypes
          --- @param ft string
          opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
          end, opts.filetypes)

          -- Add additional filetypes
          vim.list_extend(opts.filetypes, opts.filetypes_include or {})
        end,

        html = function(_, opts)
          local html = require("lspconfig.server_configurations.html")
          opts.filetypes = opts.filetypes or {}

          -- Add default filetypes
          vim.list_extend(opts.filetypes, html.default_config.filetypes)

          -- Remove excluded filetypes
          --- @param ft string
          opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
          end, opts.filetypes)

          -- Add additional filetypes
          vim.list_extend(opts.filetypes, opts.filetypes_include or {})
        end,

        htmx = function(_, opts)
          local htmx = require("lspconfig.server_configurations.htmx")
          opts.filetypes = opts.filetypes or {}

          -- Add default filetypes
          vim.list_extend(opts.filetypes, htmx.default_config.filetypes)

          -- Remove excluded filetypes
          --- @param ft string
          opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
          end, opts.filetypes)

          -- Add additional filetypes
          vim.list_extend(opts.filetypes, opts.filetypes_include or {})
        end,
      },
    },
  },
}
