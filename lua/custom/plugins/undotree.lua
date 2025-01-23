return {
  'mbbill/undotree',
  init = function()
    vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeToggle, { desc = 'Open [U]ndo tree' })
  end,
}
