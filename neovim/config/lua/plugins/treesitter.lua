local parsers = {
  "bash", "zsh",
  "c", "cpp", "make", "cmake", "nasm", "rust",
  "python", "javascript",
  "dockerfile", "gitignore", "nginx",
  "csv", "http", "json", "xml", "sql",
  "latex", "markdown",
  "lua", "vim", "vimdoc",
}

require('nvim-treesitter').install(parsers)

vim.api.nvim_create_autocmd("FileType", {
  pattern = parsers,
  callback = function()
    vim.treesitter.start()
  end,
})
