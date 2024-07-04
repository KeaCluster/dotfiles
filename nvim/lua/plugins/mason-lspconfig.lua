return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        -- Other LSPs
         "vtsls",
      },
    })

    local lspconfig = require("lspconfig")
    lspconfig.tsserver.setup({})
    -- other LSP setups...
  end,
}

