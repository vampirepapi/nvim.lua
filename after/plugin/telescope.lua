local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) --requires ripgrep
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Grep from open file (requires ripgrep to be installed)
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
