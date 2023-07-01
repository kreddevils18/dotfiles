local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then return end

mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "gopls",
    "pyright",
    "tailwindcss",
    "tsserver",
  }
  
})

local lspconfig_setup, lspconfig = pcall(require, "lspconfig")
if not lspconfig_setup then return end

lspconfig.pyright.setup({})
lspconfig.gopls.setup({})
lspconfig.pyright.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.tsserver.setup({})
