return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "windwp/nvim-ts-autotag", "HiPhish/nvim-ts-rainbow2" },
  },
  opts = function(_, opts)
    opts.rainbow = {
      enable = true,
      query = {
        "rainbow-parens",
        html = "rainbow-tags",
        vue = "rainbow-tags",
      },
      strategy = require("ts-rainbow").strategy.global,
    }
    opts.autopairs = { enable = true }
    opts.autotag = {
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
    }
    opts.highlight = { enable = true }
    opts.indent = { enable = true }
    opts.ensure_installed = {
      "html",
      "bash",
      "c",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "luadoc",
      "luap",
      "php",
      "scss",
      "sql",
      "typescript",
      "yaml",
      "markdown",
      "markdown_inline",
      "vue",
      "css",
      "query",
      "regex",
    }
    opts.incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      }
    }
  end,
}
