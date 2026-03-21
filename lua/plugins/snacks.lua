return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
    ▄▄         ▄       ▄▄        
  ▄▀███▄     ▄██     ▄███        
  ██▄▀███▄   ███   ▄███▀         
  ███  ▀███▄ ███ ▄███▀           
  ███    ▀██ ███ ███▄            
  ███      ▀ ███  ▀███▄          
  ▀██        ▀██    ▀███▄       󰒲
    ▀          ▀      ▀▀▀ LAZY󰒲  ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "[f]ind file", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "[n]ew file", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "live [g]rep", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = "󰋖 ", key = "h", desc = "find [h]elp", action = ":lua Snacks.dashboard.pick('help')" },
          { icon = " ", key = "m", desc = "find [m]en", action = ":Telescope man_pages" },
          -- { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "nvim [c]onfig", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "[r]estore session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy E[x]tras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "[l]azy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "[q]uit", action = ":qa" },
        },
      },
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        {
          pane = 2,
          icon = " ",
          title = "Recent Files",
          section = "recent_files",
          indent = 2,
          padding = 1,
        },
        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        {
          pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        { section = "startup" },
      },
    },
  },
}
