local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}
---@diagnostic disable: missing-fields
function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = {
      "lua", "markdown", "markdown_inline", "bash", "python", "c", "cpp", "cmake", "astro", "css", "html", "java", "javascript", "json", "scss", "sql", "typescript", "vue"
    }, -- put the language you want in this array
    highlight = {
      enable = true,
    },

    indent = { enable = true },
  }

end

return M
