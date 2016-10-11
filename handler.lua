-- handler.lua
local BasePlugin = require "kong.plugins.base_plugin"
local CustomHandler = BasePlugin:extend()

function CustomHandler:new()
  CustomHandler.super.new(self, "KongJwt")
end

function CustomHandler:access(config)
  CustomHandler.super.access(self)

  ngx.print("KongJwt")
  ngx.print(config.key_names) -- {"apikey"}
  ngx.print(config.hide_credentials) -- false
end

return CustomHandler
