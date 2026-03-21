return {
  "folke/flash.nvim",
  event = "VeryLazy",
  vscode = true,
  ---@type Flash.Config
  keys = function() -- NOTE: see keybinds in config/keymaps.lua
    return {
      { -- wtf, detta fungerade superenkelt? flyttade hit ifrån config/keymaps.lua
        "S",
        mode = { "n", "v" },
        function()
          require("flash").jump()
        end,
        desc = "[f]lash jump",
      },
      {
        "<C-space>",
        mode = { "n", "v" },
        function()
          require("flash").treesitter({ actions = { ["<C-space>"] = "next", ["<BS>"] = "prev" } })
        end,
        desc = "Simulate nvim-treesitter incremental selection",
      },

      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "[r]emote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "t[R]eesitter Search",
      },

      {
        "<c-f>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle [f]lash Search",
      },

      -- { "s", mode = { "n", "x", "o" }, false }, -- disable the default flash keymap -- not needed
    }
  end,
}
