return {
  'L3MON4D3/LuaSnip',
  version = 'v2.*',
  build = 'make install_jsregexp',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  config = function()
    local ls = require 'luasnip'

    require('luasnip.loaders.from_vscode').lazy_load()

    vim.keymap.set({ 'i', 's' }, '<C-M>', function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true })
    vim.keymap.set({ 'i', 's' }, '<C-N>', function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })
  end,
}
