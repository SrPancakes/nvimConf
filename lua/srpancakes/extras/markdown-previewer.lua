local M = {
  'iamcco/markdown-preview.nvim',
  event = 'VeryLazy',
  cmd = { 'MarkdownPreview', 'MarkdownPreviewStop', 'MarkdownPreviewToggle' },
  ft = { 'markdown' },
  build = function()
    vim.fn['mkdp#util#install']()
  end,
}

return M
