return {
  'supermaven-inc/supermaven-nvim',
  cond = function()
    return false
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
