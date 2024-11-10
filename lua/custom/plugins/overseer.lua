return {
  'stevearc/overseer.nvim',

  dependencies = {
    'rcarriga/nvim-notify',
    'nvim-telescope/telescope.nvim',
    {
      'stevearc/dressing.nvim',
      opts = {},
    },
  },
  opts = {
    templates = { 'builtin', 'user.zig_build' },
  },
  init = function()
    vim.keymap.set('n', '<leader>R', '<cmd>OverseerRun<CR>', { desc = 'Open overseer [R]un dialog' })
  end,
}
