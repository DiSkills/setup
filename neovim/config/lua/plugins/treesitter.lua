require('nvim-treesitter').install({
  "bash", "zsh",
  "c", "cpp", "cmake", "nasm", "rust",
  "python", "javascript",
  "dockerfile", "gitignore", "nginx",
  "csv", "http", "json", "xml", "sql",
  "latex", "markdown",
  "lua", "vim", "vimdoc",
})

vim.treesitter.start()
