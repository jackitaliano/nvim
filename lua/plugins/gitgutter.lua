return {
  "airblade/vim-gitgutter",
  keys = {
    { "<leader>gt", "<cmd>GitGutterToggle<cr>", desc = "Toggle Gutter" },
    { "]h", "<cmd>GitGutterNextHunk<cr>", desc = "Next Hunk" },
    { "[h", "<cmd>GitGutterPrevHunk<cr>", desc = "Previous Hunk" },
    { "<leader>gd", "<cmd>GitGutterDiffOrig<cr>", desc = "Git Diff" },
  },
}
