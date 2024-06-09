-- NAVIGATION
-- jump to next/prev empty line ({ / })
-- jump to open/close bracket ([{ / ]})

-- jump to first character in line (fX)
-- jump to first previous character in line (FX)
-- jump to previous word (b) / previous third word (B)
-- jump to next word (w) / next third word (W)
vim.keymap.set("n", "W", "3w")
vim.keymap.set("n", "W", "3w")

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to prev [D]iagnostics msg" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { desc = "Go to next [D]iagnostics msg" })

-- navigation while in insert mode
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- EDIT
-- replace w1 with w2 on current line (:s/w1/w2/g)
-- replace w1 with w2 in current file (:%s/w1/w2/g)
-- replace last search with w2 in current file (:%s//w2/g)
-- delete from cursor onwards (S-c)

-- move line up/down
vim.keymap.set({ "n", "i" }, "<C-a>", function() vim.cmd(":m -2") end)
vim.keymap.set({ "n", "i" }, "<C-d>", function() vim.cmd(":m +1") end)

-- SEARCH
-- Search for word under cursor (*)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- press escape to remove search highlight

-- UTILITY FUNCTIONS
vim.keymap.set({ "n", "v", "i" }, "<C-s>", function()
    vim.lsp.buf.format({ async = true })
    vim.cmd(":Update")
    vim.cmd(":w")
    vim.cmd(":stopinsert")
end, { silent = true, desc = "Save" })

--VIM
vim.keymap.set("n", "<C-u>", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- PLUGINS
-- HARPOON
local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end)
vim.keymap.set("n", "<C-r>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-q>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-e>", function() harpoon:list():next() end)

-- AUTOCOMPLETE
-- See lazy.lua for config, but in general
-- <C-e> to abort autocompletion
-- <CR> to confirm selection

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
