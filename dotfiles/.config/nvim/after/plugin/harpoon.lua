local mark = require("harpoon.mark")
local harp = require("harpoon")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<space>j", function() ui.nav_file(1) end) 
vim.keymap.set("n", "<space>k", function() ui.nav_file(2) end) 
vim.keymap.set("n", "<space>l", function() ui.nav_file(3) end) 
vim.keymap.set("n", "<space>;", function() ui.nav_file(4) end) 