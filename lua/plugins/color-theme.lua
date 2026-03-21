return {
  -- -- INFO: install the theme
  -- {
  -- "rebelot/kanagawa.nvim",
  -- lazy = false, priority = 1000, -- does nothing?
  --   config = function() -- does nothing?
  --     ---@diagnostic disable-next-line: missing-fields
  --     require("kanagawa").setup({ -- does nothing?
  --       styles = {
  --         theme = "dragon", -- or "lotus", "dragon" (or wave)
  --         comments = { italic = false }, -- Enables/Disable italics in comments
  --       },
  --     })
  --     --     -- Load the colorscheme here.
  --     --     -- Like many other themes, this one has different styles, and you could load
  --     --     -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --     --     vim.cmd.colorscheme 'tokyonight-night'
  -- vim.cmd.colorscheme("kanagawa-dragon") -- does nothing?
  -- vim.cmd.set("termguicolors")
  -- vim.cmd.set("background=dark")
  --   end,
  -- },
  --
  { "rebelot/kanagawa.nvim", opts = {} }, -- better way

  { -- INFO: load the theme
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
