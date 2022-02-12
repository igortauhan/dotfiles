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

-- C CPP
require'lspconfig'.ccls.setup{
    capabilities = capabilities
}

-- CSharp
local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
local omnisharp_bin = "/home/taauhsz/.local/share/omnisharp/OmniSharp"
-- on Windows
-- local omnisharp_bin = "/path/to/omnisharp/OmniSharp.exe"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
    ...
}
