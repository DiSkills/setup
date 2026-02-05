require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "clangd", "cmake", "rust_analyzer", "wasm_language_tools",
    "pyright", "eslint",
    "docker_language_server", "nginx_language_server",
    "postgres_lsp",
    "lua_ls", "vimls",
  },
})
