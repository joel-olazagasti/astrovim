return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "rust", "python", "typescript", "markdown", "json", "toml", "yaml" },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "markdown" },
    },
  }
}
