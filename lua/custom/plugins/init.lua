-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  'tpope/vim-fugitive',
  'github/copilot.vim',

  organize_imports = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '*.go',
      callback = function()
        vim.lsp.buf.code_action { context = { only = { 'source.organizeImports' } }, apply = true }
      end,
    })
  end,
}
