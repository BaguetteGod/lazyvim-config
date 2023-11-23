return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { { "prettierd", "prettier" } },
        php = { "php_cs_fixer" },
        markdown = { "markdownlint" },
        blade = { "blade-formatter" },
        fish = { "fish_indent" },
      },
    },
  },
}
