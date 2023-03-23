return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.gruvbox" },
  { import = "astrocommunity.colorscheme.kanagawa" },
  -- { import = "astrocommunity.colorscheme.mini-base16" },
  { import = "astrocommunity.colorscheme.nightfox" },
  { import = "astrocommunity.colorscheme.tokyonight" },
  { import = "astrocommunity.colorscheme.onigiri" },
  { import = "astrocommunity.colorscheme.oxocarbon" },
  { import = "astrocommunity.colorscheme.rose-pine", },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2", },
  { import = "astrocommunity.editing-support.zen-mode-nvim", },
  { import = "astrocommunity.utility.neodim", },
  { import = "astrocommunity.note-taking.neorg", },
  { import = "astrocommunity.pack.rust" },
  {
    "rose-pine",
    opts = {
      disable_italics = true,
    }
  }
}
