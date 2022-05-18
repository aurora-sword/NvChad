-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "solarized",
}

local userPlugins = require "custom.plugins"

M.plugins = {
  -- 返回用户插件
  user = userPlugins,
  options = {
    lspconfig = {
      setup_lspconf = "custom.configs.lspconfig", -- or any path
    }
  }
}

return M
