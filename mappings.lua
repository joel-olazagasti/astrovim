-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- first key is the mode
-- second key is the lefthand side of the map
-- mappings seen under group name "Buffer"
return {
  n = {
    ["<leader>uU"] = { "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
    ["<leader>gf"] = {
      function()
        if require('obsidian').util.cursor_on_markdown_link() then
          return "<cmd>ObsidianFollowLink<cr>"
        else
          return "gf"
        end
      end,
      desc = "Go to file under cursor"
    },
    -- ["<leader>b"] = { name = "Buffers" },
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
    --       require("astronvim.utils.buffer").close(
    --         bufnr)
    --     end)
    --   end,
    --   desc = "Pick to close",
    -- },

    ["<leader>h"] = { name = "Harpoon" },
    ["<leader>hu"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Toggle UI"
    },
    ["<leader>hm"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Add file"
    },
    ["<leader>hh"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
    },
    ["<leader>hg"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end
    },
    --Obsidian/notes
    ["<leader>n"] = { name = "Notes" },
    ["<leader>nt"] = { "<cmd>ObsidianToday<cr>", desc = "New Daily Note" },
    ["<leader>ny"] = { "<cmd>ObsidianYesterday<cr>", desc = "Yesterday's Daily Note" },
    ["<leader>no"] = { "<cmd>ObsidianOpen<cr>", desc = "Open a Note" },
    ["<leader>nn"] = { "<cmd>ObsidianNew<cr>", desc = "New Note" },
    ["<leader>ns"] = { "<cmd>ObsidianSearch<cr>", desc = "Search for Note" },
    ["<leader>nf"] = { "<cmd>ObsidianQuickSwitch<cr>", desc = "Find Note" },
    ["<leader>nl"] = { "<cmd>ObsidianLink<cr>", desc = "Link to Note" },
    ["<leader>nL"] = { "<cmd>ObsidianLinkNew<cr>", desc = "Create a New Note and Link" },
    ["<leader>ng"] = { "<cmd>ObsidianFollowLink<cr>", desc = "Follow Link to Note" },
    ["<leader>nT"] = { "<cmd>ObsidianTemplate<cr>", desc = "Insert Template" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change desc but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
