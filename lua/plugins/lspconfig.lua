-- Primero carga mason.nvim
require("mason").setup()

-- Luego carga mason-lspconfig
require("mason-lspconfig").setup({
  ensure_installed = { "ts_ls", "tailwindcss", "eslint", "cssls" },
  automatic_installation = true,
})

-- Configuración común de on_attach y capabilities
local on_attach = on_attach
local capabilities = capabilities

-- Lista de servidores LSP
local servers = { "ts_ls", "tailwindcss", "eslint", "cssls" }

for _, lsp in ipairs(servers) do
  -- Definir la configuración del servidor LSP
  vim.lsp.config(lsp, {
    on_attach = on_attach,
    capabilities = capabilities,
  })

  -- Habilitar el servidor LSP para los tipos de archivo correspondientes
  vim.lsp.enable(lsp)
end
