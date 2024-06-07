--VIM
vim.keymap.set("n", "<C-u>", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- Utility functions
vim.keymap.set({ "n", "v", "i" }, "<C-s>", function()
    vim.lsp.buf.format({ async = true })
    vim.cmd(":Update")
    vim.cmd(":w")
    vim.cmd(":stopinsert")
end, { silent = true, desc = "Save" })

-- Notes for Search and Replace
-- Search: /foo, Enter to jump, <n> for next, <N> for previous
-- Replace: :s/foo/bar/g - in line, all matches
-- Replace: :%s/<\foo\>/bar/g - all lines, exact match of foo
-- Replace: :%s/<\foo\>/bar/gc - all lines, exact match of foo, ask for confirmation
-- Replace: :%s/<\foo\>/bar/gci - all lines, exact match of foo, ask for confirmation, case insensitive

-- navigation while in insert mode
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- move line up/down
vim.keymap.set({ "n", "i" }, "<C-a>", function() vim.cmd(":m -2") end)
vim.keymap.set({ "n", "i" }, "<C-d>", function() vim.cmd(":m +1") end)

-- move block up/down
vim.keymap.set("v", "<C-a>", function() end) --TODO

-- Copy line/block
-- TODO

-- Jump to end of word/line/diagnostic/etc
-- TODO


-- Search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- JUMP back and forth

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to prev [D]iagnostics msg" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { desc = "Go to next [D]iagnostics msg" })


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

-- AUTOCOMPLETE
-- See lazy.lua for config, but in general
-- <C-e> to abort autocompletion
-- <CR> to confirm selection

-- LSP
-- See in

-- TROUBLE
vim.keymap.set("n", "<C-t>", function() require("trouble").toggle() end)
vim.keymap.set("n", "<C-o>", function() require("trouble").next({ skip_groups = true, jump = true }) end)
vim.keymap.set("n", "<C-p>", function() require("trouble").previous({ skip_groups = true, jump = true }) end)

-- UNDOTREE
vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
