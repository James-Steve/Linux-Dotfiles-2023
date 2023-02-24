local tel = require('telescope')
local builtin = require('telescope.builtin')
tel.load_extension("file_browser")


vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
--Telescoping in ~/.config/nvim
vim.keymap.set('n', '<Leader>rc', function()

	builtin.find_files({
		prompt_title= "<VimRC>",
		cwd = "~/.config/nvim",
		hidden = true,
	})
end
, {})
--File Browser
vim.keymap.set('n', '<Leader>bb', tel.extensions.file_browser.file_browser, {})
--Buffers
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>fc', builtin.git_commits, {})
vim.keymap.set('n', '<Leader>fg', function() 
	builtin.live_grep({vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u' }})
end, {})
vim.keymap.set('n', '<Leader>fs', builtin.git_status,{})
--Lists commits for the current buffer
vim.keymap.set('n', '<Leader>fbc', builtin.git_bcommits, {})


