return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
        ███████╗ █████╗ ███████╗ █████╗ ██╗   ██╗██╗███╗   ███╗        
        ╚══███╔╝██╔══██╗╚══███╔╝██╔══██╗██║   ██║██║████╗ ████║        
          ███╔╝ ███████║  ███╔╝ ███████║██║   ██║██║██╔████╔██║        
         ███╔╝  ██╔══██║ ███╔╝  ██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║        
        ███████╗██║  ██║███████╗██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║       󰒲
        ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ LAZY󰒲  ]],
  --       header = [[
  --   ▄▄         ▄       ▄▄               Z  
  -- ▄▀███▄     ▄██     ▄███                  
  -- ██▄▀███▄   ███   ▄███▀              Z    
  -- ███  ▀███▄ ███ ▄███▀                     
  -- ███    ▀██ ███ ███▄               z      
  -- ███      ▀ ███  ▀███▄           z        
  -- ▀██        ▀██    ▀███▄                  
  --   ▀          ▀      ▀▀▀ LAZY...          ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      -- formats = { -- default ops:
      --     icon = function(item)
      --         if item.file and item.icon == "file" or item.icon == "directory" then
      --             return Snacks.dashboard.icon(item.file, item.icon)
      --         end
      --         return { item.icon, width = 2, hl = "icon" }
      --     end,
      --     footer = { "%s", align = "center" },
      --     header = { "%s", align = "center" },
      --     file = function(item, ctx)
      --         local fname = vim.fn.fnamemodify(item.file, ":~")
      --         fname = ctx.width and #fname > ctx.width and vim.fn.pathshorten(fname) or fname
      --         if #fname > ctx.width then
      --             local dir = vim.fn.fnamemodify(fname, ":h")
      --             local file = vim.fn.fnamemodify(fname, ":t")
      --             if dir and file then
      --                 file = file:sub(-(ctx.width - #dir - 2))
      --                 fname = dir .. "/…" .. file
      --             end
      --         end
      --         local dir, file = fname:match("^(.*)/(.+)$")
      --         return dir and { { dir .. "/", hl = "dir" }, { file, hl = "file" } }
      --             or { { fname, hl = "file" } }
      --     end,
      -- },
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
