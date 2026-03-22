return { -- Useful plugin to show you pending keybinds.
  "folke/which-key.nvim",
  opts = {
    delay = 0,
    -- Document existing key chains
    spec = {
      { "s", group = "surround", mode = { "n", "v" } }, -- don't work?
    },
  },
}
