local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>h", mark.add_file, { desc = 'Harpoon [A]ppend' })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) end, { desc = 'Harpoon [1]' })
vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end, { desc = 'Harpoon [2]' })
vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end, { desc = 'Harpoon [3]' })
vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end, { desc = 'Harpoon [4]' })
vim.keymap.set("n", "<C-5>", function() ui.nav_file(5) end, { desc = 'Harpoon [5]' })
