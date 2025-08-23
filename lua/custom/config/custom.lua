vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.fs,*.fsx,*.fsi',
  command = [[set filetype=fsharp]],
})
