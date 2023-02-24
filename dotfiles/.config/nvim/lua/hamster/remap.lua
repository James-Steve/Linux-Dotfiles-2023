vim.g.mapleader = "\\"
--vim remaps default is non recursive
--
--
--Opens netrw (file tree explorer)
vim.keymap.set("n", "<space>f", vim.cmd.Ex)

--Code tab stops cleanup
vim.keymap.set("n", "<F7>",  "gg=G")
