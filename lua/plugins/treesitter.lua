return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "windwp/nvim-ts-autotag" },
  },
  opts = {
    highlights = { enable = true },
    autopairs = { enable = true },
    autotag = {
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
    },
    indent = { enable = true },
  },
  ensure_installed = {
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
  },
}
