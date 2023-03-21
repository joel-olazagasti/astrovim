return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "mbbill/undotree",
    event = "BufRead"
  },
  {
    "github/copilot.vim",
    event = "BufRead"
  },
  {
    "folke/zen-mode.nvim",
    lazy = false
  },

  {
    "Pocco81/auto-save.nvim",
    event = "BufRead",
    config = function()
      require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
        debounce_delay = 1000
      }
    end,
  }
}
