-- dirs
local root = "/Users/jackitaliano"
local notesDir = root .. "/notes/2023"
local projectsDir = root .. "/projects"
local configDir = root .. "/.config"

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  -- oil filetree
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>me", "<cmd>Oil --float ".. notesDir .. "<cr>", desc = "[e]xplore notes" },

    },
  },
  -- Neotree
  {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
      {
        "<leader>e", function()
          vim.cmd({ cmd = "Neotree", args = { "toggle" } })
        end,
        desc = "[e]xplore"
      },
      {
        "<leader>b",
        "<cmd>Neotree buffers toggle<cr>",
        desc = "Buffers"
      },
    },
    config = function ()
      require('neo-tree').setup {}
    end,
  }
}
