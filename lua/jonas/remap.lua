--VIM
vim.keymap.set("n", "<C-u>", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- UTILITY FUNCTIONS
vim.keymap.set({ "n", "v", "i" }, "<C-s>", function()
    vim.lsp.buf.format({ async = true })
    vim.cmd(":Update")
    vim.cmd(":w")
    vim.cmd(":stopinsert")
end, { silent = true, desc = "Save" })

-- navigation while in insert mode
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- move line up/down
vim.keymap.set({ "n", "i" }, "<C-a>", function() vim.cmd(":m -2") end)
vim.keymap.set({ "n", "i" }, "<C-d>", function() vim.cmd(":m +1") end)
