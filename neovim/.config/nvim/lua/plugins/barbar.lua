return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
    vim.keymap.set("n", "<space-cb>", "<Cmd>BufferNext<CR>", opts)
  end,
}
