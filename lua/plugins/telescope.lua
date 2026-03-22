return { -- change some telescope options and a keymap to browse plugin files
  "nvim-telescope/telescope.nvim",
  keys = function() -- so I can micro-manage (most are default)
    -- add a keymap to browse plugin files
    return {
      -- stylua: ignore start
      { "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Switch Buffer" }, -- TODO: in >b
      { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      { "<leader><space>", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      { "<leader>uC", LazyVim.pick("colorscheme", { enable_preview = true }), desc = "Colorscheme with Preview" },

      { "<leader><leader>", LazyVim.pick("live_grep"), desc = "live[ ]grep" },
      { "C-/", function()
          require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
            winblend = 10, previewer = false, }))
      end, desc = "Fzf [/] current buf" },
      { "<leader>/", function()
          require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
            winblend = 10, previewer = true, }))
        end, desc = "Fzf [/] current buf" },

      -- find (files and similar)
      { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true ignore_current_buffer=true<cr>", desc = "Buffers" },
      { "<leader>fB", "<cmd>Telescope buffers<cr>", desc = "Buffers (all)" },
      { "<leader>fc", LazyVim.pick.config_files(), desc = "Find Config File" },
      { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "files(cwd)" },
      { "<leader>fF", LazyVim.pick("files"), desc = "Files" },
      { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" }, -- TODO: in >g
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "help" },
      { "<leader>fm", "<cmd>Telescope man_pages<cr>", desc = "men (pages)" },
      { "<leader>fp", function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end, desc = "Find Plugin File" },
      { "<leader>fr", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "recent(cwd)" },
      { "<leader>fR", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
      { '<leader>f"', "<cmd>Telescope registers<cr>", desc = '"registers' },
      { "<leader>f:", "<cmd>Telescope commands<cr>", desc = ":commands" },

      -- git
      { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
      { "<leader>gl", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
      { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
      { "<leader>gS", "<cmd>Telescope git_stash<cr>", desc = "Git Stash" },

      -- search (grep text)
      { "<leader>s/", "<cmd>Telescope search_history<cr>", desc = "Search History" },
      { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "autocmd" },
      { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer Lines" },
      { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "diagnostics(buffer)" },
      { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
      { "<leader>sg", LazyVim.pick("live_grep", { root = false }), desc = "live grep(cwd)" },
      { "<leader>sG", LazyVim.pick("live_grep"), desc = "live grep" },
      { "<leader>sh", "<cmd>Telescope highlights<cr>", desc = "highlight Groups" },
      { "<leader>sj", "<cmd>Telescope jumplist<cr>", desc = "jumplist(C-o)" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "key-maps" },
      { "<leader>sl", "<cmd>Telescope loclist<cr>", desc = "Location List" },
      { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "marks" },
      { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "options" },
      { "<leader>sr", "<cmd>Telescope resume<cr>", desc = "resume" },
      { "<leader>sq", "<cmd>Telescope quickfix<cr>", desc = "quickfix List" },
      { "<leader>sw", LazyVim.pick("grep_string", { root = false, word_match = "-w" }), desc = "word(cwd)" },
      { "<leader>sW", LazyVim.pick("grep_string", { word_match = "-w" }), desc = "Word" },
      { "<leader>sw", LazyVim.pick("grep_string", { root = false }), mode = "x", desc = "selection(cwd)" },
      { "<leader>sW", LazyVim.pick("grep_string"), mode = "x", desc = "selection" },
      { "<leader>ss", function() require("telescope.builtin").lsp_document_symbols({ symbols = LazyVim.config.get_kind_filter(), }) end, desc = "symbol" },
      { "<leader>sS", function() require("telescope.builtin").lsp_dynamic_workspace_symbols({ symbols = LazyVim.config.get_kind_filter(), }) end, desc = "Symbol(Workspace)" },

      -- stylua: ignore end
    }
  end,
  -- -- change some options?
  -- opts = {
  --   defaults = {
  --     layout_strategy = "horizontal",
  --     layout_config = { prompt_position = "top" },
  --     sorting_strategy = "ascending",
  --     winblend = 0,
  --   },
  -- },
}
