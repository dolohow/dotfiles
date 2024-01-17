local t = require('telescope.builtin')

pcall(require('telescope').load_extension, 'fzf')

vim.keymap.set('n', '<leader>?', t.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', t.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  t.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>sf', t.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', t.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', t.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', t.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', t.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', t.resume, { desc = '[S]earch [R]esume' })
