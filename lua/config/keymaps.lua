-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: INFO: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local nomap = vim.keymap.del -- disable (default) mappings

-- HACK: nomap

nomap("n", "<leader>`")
nomap("n", "<leader>bo")
nomap("n", "<leader>K")
nomap("n", "<leader>l")
nomap("n", "<leader>L")
nomap("n", "<leader>fT")

-- HACK: map

map("n", "<leader>bx", function()
  Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })

map("n", "<leader>gm", "<cmd>norm! K<cr>", { desc = "Keywordprg(man)" })

map("n", "<leader>bn", "<cmd>enew<cr>", { desc = "new" })

if vim.lsp.inlay_hint then
  Snacks.toggle.inlay_hints():map("<leader>uh")
end

-- lazy
map("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })
if vim.fn.executable("lazygit") == 1 then -- lazygit
  map("n", "<leader>ll", function()
    Snacks.lazygit()
  end, { desc = "Lazygit" })
end
map("n", "<leader>lL", function()
  LazyVim.news.changelog()
end, { desc = "LazyVim Changelog" }) -- LazyVim Changelog

map("n", "<C-q>", "<cmd>q<cr>", { desc = "Quit" }) -- quit

map("n", "<leader>ci", vim.show_pos, { desc = "TS Inspect" }) -- Treesitter inspect
map("n", "<leader>cI", function()
  vim.treesitter.inspect_tree()
  vim.api.nvim_input("I")
end, { desc = "TS Inspect Tree" })

-- map("n", "<leader>T", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal" })
map("n", "<leader>T", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal(root dir)" })
map("n", "<c-/>", function()
  Snacks.terminal.focus()
  vim.cmd("startinsert")
end, { desc = "Terminal(cwd)" })

-- tabs
map("n", "<leader><tab>e", "<cmd>tablast<cr>", { desc = "tab end" })
map("n", "<leader><tab>a", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>h", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

map("n", "<C-c>", "gcc", { desc = "toggle comment", remap = true }) -- remap required, becuase ?
map("v", "<C-c>", "gc", { desc = "v-mode comment", remap = true })
