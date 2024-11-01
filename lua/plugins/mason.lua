-- mason.nvim is a package manager for Language Server Protocol (LSP) servers,
-- Debug Adapter Protocol (DAP) servers, linters and formatters
return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
}
