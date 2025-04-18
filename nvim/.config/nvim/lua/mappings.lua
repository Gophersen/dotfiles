require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- LSP mappiings
map("n", "<leader>rf", function()
  require("telescope.builtin").lsp_references()
end, { desc = "Find References (Telescope)" })

-- DAP mappings
map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Run DAP Python test method" })
map("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", { desc = "Toggle DAP UI" })
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle DAP Breakpoint" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue DAP" })
