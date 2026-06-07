vim.api.nvim_set_keymap('n', '<C-A-h>', ':bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A-l>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'mj', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'mk', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'mj', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'mk', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Disable default Neovim 0.10 snippet mappings
pcall(vim.keymap.del, 'i', '<Tab>')
pcall(vim.keymap.del, 's', '<Tab>')
pcall(vim.keymap.del, 'i', '<S-Tab>')
pcall(vim.keymap.del, 's', '<S-Tab>')
