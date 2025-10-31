local builtin = require('telescope.builtin')
vim.keymap.set('n', ';f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>g', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Open a note (file) from ~/notes
vim.keymap.set('n', '<leader>fn', function()
    builtin.find_files({ cwd = vim.fn.expand('~/notes'), hidden = true })
end, { desc = 'Telescope: Find notes' })

-- Search inside notes
vim.keymap.set('n', '<leader>gn', function()
    builtin.live_grep({ cwd = vim.fn.expand('~/notes') })
end, { desc = 'Telescope: Grep notes' })
