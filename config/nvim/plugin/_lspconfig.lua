local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Ruby
require'lspconfig'.solargraph.setup{
    capabilities = capabilities
}

-- Python
require'lspconfig'.pyright.setup{
    capabilities = capabilities
}

-- HTML
require'lspconfig'.html.setup{
    capabilities = capabilities
}

-- CSS
require'lspconfig'.cssls.setup{
    capabilities = capabilities
}

-- TypeScript
require'lspconfig'.tsserver.setup{
    capabilities = capabilities
}

-- JSON
require'lspconfig'.jsonls.setup{
    capabilities = capabilities
}
