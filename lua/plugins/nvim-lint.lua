return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "eslint" },
        fish = { "fish" },
        -- php = { "phpstan" },
        -- markdown = { "proselint" },
        -- md = { "proselint" },
      },
    },
  },
}
