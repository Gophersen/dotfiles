require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map("n", "<leader>rf", vim.lsp.buf.references, { desc = "LSP Refrences" })

map("n", "<leader>rf", function()
  require("telescope.builtin").lsp_references()
end, { desc = "Find References (Telescope)" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
