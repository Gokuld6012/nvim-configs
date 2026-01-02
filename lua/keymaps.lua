-- lua/keymaps.lua

-- Leader key (MUST be before mappings)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Explorer" })

-- Formatting
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format file" })
-- File navigation
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Find text" })

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })


