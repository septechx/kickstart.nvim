vim.api.nvim_set_keymap('n', '<C-A-h>', ':bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A-l>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"_dP"', { noremap = true })
