-- custom.configs.lspconfig file 

local M = {}

M.setup_lsp = function(attach, capabilities)
  local lsp_installer = require "nvim-lsp-installer"

  lsp_installer.settings {
    ui = {
      icons = {
        server_installed = "﫟" ,
        server_pending = "",
        server_uninstalled = "✗",
      },
    },
  }

  lsp_installer.on_server_ready(function(server)
    local opts = {}
    if server.name == "sumneko_lua" then
      opts = {
        on_attach = attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {'vim'},
            },
          },
        },
      }
    else
      opts = {
        on_attach = attach,
        capabilities = capabilities,
        settings = {},
      }
    end

    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
  end)
end

return M
