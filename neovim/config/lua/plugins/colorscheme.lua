vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")

vim.diagnostic.config({
  virtual_text = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
  },
})

local colors = {
  red = "#fb4934",
  yellow = "#fabd2f",
  blue = "#83a598",
}

vim.cmd("highlight DiagnosticError guifg=" .. colors.red)
vim.cmd("highlight DiagnosticWarn guifg=" .. colors.yellow)
vim.cmd("highlight DiagnosticInfo guifg=" .. colors.blue)
vim.cmd("highlight DiagnosticHint guifg=" .. colors.blue)
