return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      { 'oxilang/tree-sitter-oxi', build = false },
    },
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then
        table.insert(opts.ensure_installed, 'oxi')
      end
    end,
    config = function(_, opts)
      local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

      parser_config.oxi = {
        install_info = {
          url = 'https://github.com/oxilang/tree-sitter-oxi.git',
          files = { 'src/parser.c' },
          branch = 'main',
          generate_requires_npm = false,
          requires_generate_from_grammar = false,
        },
        filetype = 'oxi',
      }

      vim.filetype.add {
        extension = {
          oxi = 'oxi',
        },
      }

      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
