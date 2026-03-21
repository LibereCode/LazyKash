return { -- INFO: Just installs the theme and manage options. Load it in lazy.lua
  --
  -- Configure LazyVim to load gruvbox
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" }, -- Gruvbox är så fucking ful

  -- { "rebelot/kanagawa.nvim", -- lazy = false, priority = 1000, -- does nothing?
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

  { -- "statusbar" (at the bottom)
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    -- the opts function can also be used to change the default opts:
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return "💤"
        end,
      })
    end,
  },
}
