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

vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

-- Nvim CMP
local cmp = require("cmp")
cmp.setup({
  completion = { autocomplete = false },
  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-x><C-o>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({ { name = "nvim_lsp" } }),
})

cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = { { name = "buffer" } },
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
  matching = { disallow_symbol_nonprefix_matching = false },
})
