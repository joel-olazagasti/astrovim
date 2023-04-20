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
    "theprimeagen/vim-be-good",
    lazy = false
  },
  {
    "theprimeagen/harpoon",
    lazy = false,
    config = function()
      require("harpoon").setup()
      require("telescope").load_extension("harpoon")
    end,
  }
  -- {
  --   "tmillr/sos.nvim",
  --   lazy = false,
  --   config = function()
  --     require("sos").setup({
  --       autowrite = "all",
  --       timeout = 10000,
  --     })
  --   end,
  -- }

  -- {
  --   "zbirenbaum/copilot.lua",
  --   event = "BufRead",
  --   config = function()
  --     require("copilot").setup({
  --       suggestion = { enabled = false },
  --       panel = { enabled = false },
  --     })
  --   end
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   after = { "copilot.lua" },
  --   event = "BufRead",
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end
  -- },
}
