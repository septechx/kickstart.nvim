return {
  'supermaven-inc/supermaven-nvim',
  cond = function()
    return not string.match(vim.fn.fnamemodify(vim.fn.bufname '%', ':t'), '.*%.md')
  end,
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<C-a>',
        clear_suggestion = '<C-l>',
        accept_word = '<C-j>',
      },
    }
  end,
}
