local function on_attach(client, buffer)
  -- This callback is called when the LSP is atttached/enabled for this buffer
  -- we could set keymaps related to LSP, etc here.
  -- Set updatetime for CursorHold
  -- 300ms of no cursor movement to trigger CursorHold
  vim.opt.updatetime = 100

  -- Show diagnostic popup on cursor hover
  local diag_float_grp = vim.api.nvim_create_augroup("DiagnosticFloat", { clear = true })
  vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
      vim.diagnostic.open_float(nil, { focusable = false })
    end,
    group = diag_float_grp,
  })
  vim.wo.signcolumn = "yes"
end
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
      { import = "astrocommunity.editing-support.todo-comments-nvim", },
      { import = "astrocommunity.utility.neodim", },
      { import = "astrocommunity.note-taking.obsidian-nvim", },
      { import = "astrocommunity.pack.rust" },
      -- { import = "astrocommunity.pack.tailwindcss" },
      -- { import = "astrocommunity.pack.python" },
      -- { import = "astrocommunity.pack.typescript" },
      -- { import = "astrocommunity.pack.markdown" },
      { import = "astrocommunity.pack.json" },
      { import = "astrocommunity.pack.toml" },
      { import = "astrocommunity.pack.yaml" },
      {
        "rose-pine",
        opts = {
          disable_italics = true,
          disable_background = true,
          disable_float_background = true,
          highlight_groups = {
            StatusLine = { bg = "none" },
            StatusLineNC = { bg = "none" },
            TabLine = { bg = "#ff", blend = 50 },
            TabLineSel = { bg = "none" },
            TabLineFill = { bg = "none" },
            CursorLine = { bg = "none" },
          },
        },
      },
      {
        "nightfox.nvim",
        opts = {
          options = {
            transparent = true,
            dim_interactive = true,
            -- styles = {
            -- comments = "italic",
            -- keywords = "bold",
            -- functions = "italic,bold",
            -- },
          },
        },
      },
      {
        "obsidian.nvim",
        opts = {
          dir = "/mnt/c/Users/olaza/OneDrive/Documents/obsidian/obsidian/",
          completion = {
            nvim_cmp = true
          },
          notes_subdir = "notes",
          daily_notes = {
            folder = "notes/daily"
          },
          templates = {
            subdir = "templates",
            date_format = "%Y-%m-%d-%a",
            time_format = "%H:%M",
          },
        },
      },
    },
    {
      "rust",
      opts = {
        tools = {
          runnables = {
            -- whether to use telescope for selection menu or not
            use_telescope = true,
            -- rest of the opts are forwarded to telescope
          },
          -- Options for rust-tools.nvim
          inlay_hints = {
            max_len_align = true,
            show_parameter_hints = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
          },
          expand_macro = {
            -- whether to enable experimental expand_macro
            enable = false,
          },
        },
        server = {
          on_attach = on_attach,
          settings = {
            ["rust-analyzer"] = {
              -- enable clippy on save
              checkOnSave = {
                command = "clippy",
              },
            }
          }
        }
      },
    }
