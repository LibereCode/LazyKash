-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- INFO: LazyVim keymap CheatSheet
-- https://www.lazyvim.org/keymaps

local nomap = vim.keymap.del -- disable (default) mappings

-- nomap("n", "<C-c>")
nomap("n", "<leader>n")
-- nomap("n", "<leader>rn")
-- nomap("n", "<leader>fm")
nomap("n", "<leader>ds")
-- nomap("n", "<leader>b")
-- nomap("n", "<tab>")
-- nomap("n", "<S-tab>")
-- nomap({ "n", "v" }, "<leader>/")
-- nomap("n", "<leader>fw")
-- nomap("n", "<leader>ma")
-- nomap("n", "<leader>Gc")
-- nomap("n", "<leader>Gt")
-- nomap("n", "<leader>v")
-- nomap("n", "<leader>h")
-- nomap("n", "<A-i>h")
-- nomap("n", "s")

local map = vim.keymap.set -- add yours here

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-q>", "<cmd> q <cr>")

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "general clear highlights" }) -- Clear highlights on search when pressing <Esc> in normal mode

-- See :help vim.diagnostic.Opts
vim.diagnostic.config({ -- Diagnostic Config & Keymaps
  update_in_insert = false,
  severity_sort = true,
  float = { border = "rounded", source = "if_many" },
  underline = { severity = vim.diagnostic.severity.ERROR },
  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines
  jump = { float = true }, -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
})
map("n", "<leader>cq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

map("t", "<C-ESC>", "<C-\\><C-N>", { desc = "terminal [ESC]ape(🐵) terminal mode" }) -- exit Terminal mode

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
-- NOTE: C-hjkl(Focus) and C-A-hjkl(move) already added !!

map("n", "<leader>ul", "<cmd>set nu!<CR>", { desc = "toggle [l]ine number" })
map("n", "<leader>uL", "<cmd>set rnu!<CR>", { desc = "toggle relative [L]ine number" })

map({ "n", "x" }, "<leader>cf", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "[c]conform [f]ormat file" })

-- Comment
map("n", "<C-c>", "gcc", { desc = "toggle [c]omment", remap = true })
map("v", "<C-c>", "gc", { desc = "toggle [c]omment", remap = true })

-- insert mode keybinds
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
-- map("i", "<C-j>", "<Down>", { desc = "move down" })
-- map("i", "<C-k>", "<Up>", { desc = "move up" })
map("i", "<C-l>", "<Right>", { desc = "move right" })

-- NOTE: ------- PLUGINS ---------

-- TODO: move plugins keybinds to the plugins themselves.
-- - OR create a new file called somlike "plug_map.lua" specifically for plugin-keymaps

-- nvimtree
-- map("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
-- map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
-- FIXME:har wack interaction när nvtree är i focus(öppnar filen?)

-- -- telescope -- FIXME: telescope isnt loaded here, so these do nothing.
--                  MOVE TO TELESCOPE CONFIG !!
-- map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
-- map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
-- map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
-- map("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
-- map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
-- map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
-- map("n", "<leader>Gc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
-- map("n", "<leader>Gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
-- map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
-- map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
-- map(
--   "n",
--   "<leader>fa",
--   "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
--   { desc = "telescope find all files" }
-- )

-- Terminal toggle
map({ "n", "t" }, "<C-/", "<cmd>lua Snacks.terminal.toggle()<CR>", { desc = "Toggle Snacks.terminal" })

-- mini.lua
-- surround
-- map("n", "sa", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })

-- whichkey
-- move WhichKey <leader>(space)W
map("n", "<leader>W", "<cmd>WhichKey<cr>", {
  desc = "Show keymap (WhichKey)",
})

-- Snacks
-- explorer
map("n", "<C-e>", "<cmd>lua Snacks.explorer.open()<cr>", { desc = "Toggle Snacks.[e]xplorer" })
