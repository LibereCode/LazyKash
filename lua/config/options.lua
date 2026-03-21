-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local o = vim.o
local opt = vim.opt
local g = vim.g

-- from niri-archcraft-niri-nvim in my lazyvim config/options.lua
-- File handling: Swap, Backup, Undo
opt.swapfile = true -- swapfile -- default stored in local/state/nvim/swap
-- opt.directory = "." -- store in same dir
-- opt.directory = vim.fn.stdpath 'data' .. '/swap//' -- store in local/share
opt.backup = true -- bakkupp -- default stored nowhere ??
-- opt.backupdir = "." -- stored in same file
opt.backupdir = vim.fn.stdpath("data") .. "/bakkupp//" -- local/share/ for bakkupp files
opt.undofile = true -- Persistent undo history (stored in a central location)
-- opt.undodir = vim.fn.stdpath("data") .. "/undo//" -- Use Neovim's data directory for undo files
opt.termguicolors = true -- Enable true colors for proper colorscheme support
vim.cmd("set t_Co=256")

o.cursorlineopt = "both" -- to enable cursorline!

o.number = true -- Make line numbers default
o.relativenumber = true -- You can also add relative line numbers, to help with jumping.
o.mouse = "a" -- Enable mouse mode, can be useful for resizing splits for example!
o.showmode = false -- Don't show the mode, since it's already in the status line
vim.schedule(function()
  o.clipboard = "unnamedplus"
end) -- Sync clipboard between OS and Neovim. --  See `:help 'clipboard'`
o.breakindent = true -- Enable break indent
o.undofile = true -- Save undo history
o.ignorecase = true -- Case-insensitive searching UNLESS
o.smartcase = true -- \C or one or more capital letters in the search term
o.signcolumn = "yes" -- Keep signcolumn on by default
o.updatetime = 250 -- interval for writing swap file to disk, also used by gitsigns
o.timeoutlen = 300 -- Decrease mapped sequence wait time
o.splitright = true -- Configure how new splits should be opened
o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
o.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
o.inccommand = "split" -- Preview substitutions live, as you type!
o.cursorline = true -- Show which line your cursor is on
o.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
-- See `:help 'confirm'`
o.confirm = true -- raise a dialog asking if you wish to save the current file(s)

opt.wrap = false -- I hate wrap

-- -- Blink
-- https://www.lazyvim.org/extras/coding/blink#options
-- set to `true` to follow the main branch
-- you need to have a working rust toolchain to build the plugin
-- in this case.
g.lazyvim_blink_main = true

vim.lsp.enable("markdownlint")
