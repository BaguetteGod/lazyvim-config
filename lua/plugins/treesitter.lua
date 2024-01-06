return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "windwp/nvim-ts-autotag" },
    { "hiphish/rainbow-delimiters.nvim" },
    { "vrischmann/tree-sitter-templ" },
  },
  opts = function(_, opts)
    opts.rainbow = {
      enable = true,
      query = {
        "rainbow-delimiters",
        html = "rainbow-tags",
        vue = "rainbow-tags",
      },
      strategy = require("rainbow-delimiters").strategy.global,
    }
    opts.autopairs = { enable = true }
    opts.autotag = {
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
      filetypes = {
        "html",
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
        "svelte",
        "vue",
        "tsx",
        "jsx",
        "rescript",
        "xml",
        "php",
        "markdown",
        "astro",
        "glimmer",
        "handlebars",
        "hbs",
        "templ",
      },
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
      },
    }
  end,
}
