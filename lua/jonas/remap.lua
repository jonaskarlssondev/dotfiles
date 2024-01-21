--VIM
vim.keymap.set("n", "<C-u>", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- Utility functions
vim.keymap.set({ "n", "v", "i" }, "<C-s>", "<C-c>:update<cr>", { silent = true, desc = "Save" })


-- navigation while in insert mode
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- move line up/down
vim.keymap.set({ "n", "i" }, "<C-a>", function() vim.cmd(":m -2") end)
vim.keymap.set({ "n", "i" }, "<C-d>", function() vim.cmd(":m +1") end)

-- move block up/down
vim.keymap.set("v", "<C-a>", function() end)


-- Copy line/block
-- TODO

-- Jump to search result in file

-- HARPOON
local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

--vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
--vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
--vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
--vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-q>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-w>", function() harpoon:list():next() end)

-- LSP ZERO


-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
