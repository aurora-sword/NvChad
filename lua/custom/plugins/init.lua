return {
  ["williamboman/nvim-lsp-installer"] = {},
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },
  ["phaazon/hop.nvim"] = {
    branch = 'v1',
    config = function ()
      require("custom.plugins.hop").setup()
    end
  },
}
