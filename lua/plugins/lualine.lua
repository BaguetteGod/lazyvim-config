vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text

return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local git_blame = require("gitblame")

    return {
      sections = {
        lualine_c = {
          { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
        },
      },
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
