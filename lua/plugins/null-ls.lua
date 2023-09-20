return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.phpcsfixer,
          nls.builtins.formatting.blade_formatter,
          nls.builtins.formatting.prettierd,
          nls.builtins.diagnostics.phpstan.with({
            extra_args = {
              "--memory-limit=2G",
            },
          }),
        },
      }
    end,
  },
  {
    -- add longer timeout, since formatting blade files gets a little slow
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 2000 },
    },
  },
}
