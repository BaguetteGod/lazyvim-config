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
    opts.indent = { enable = true }
    opts.ensure_installed = {
      "html",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "luadoc",
      "php",
      "scss",
      "sql",
      "typescript",
      "yaml",
      "luap",
      "markdown",
      "markdown_inline",
      "vue",
    }
  end,
}
