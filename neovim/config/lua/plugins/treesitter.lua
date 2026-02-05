local parsers = {
  "bash", "zsh",
  "c", "cpp", "make", "cmake", "nasm", "rust",
  "python", "javascript",
  "dockerfile", "gitignore", "nginx",
  "csv", "http", "json", "xml", "sql",
  "markdown",
  "lua", "vim", "vimdoc",
}

require('nvim-treesitter').install(parsers)

-- Enabling syntax highlighting
vim.api.nvim_create_autocmd("FileType", {
  pattern = vim.iter(parsers):map(vim.treesitter.language.get_filetypes):flatten():totable(),
  callback = function()
    vim.treesitter.start()
  end,
})
