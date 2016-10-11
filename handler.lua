-- handler.lua
-- local jwt = require "luajwt"
local BasePlugin = require "kong.plugins.base_plugin"
local CustomHandler = BasePlugin:extend()

function CustomHandler:new()
  CustomHandler.super.new(self, "KongJwt")
end

function CustomHandler:access(config)
  CustomHandler.super.access(self)

  ngx.say(ngx.header.apikey)
  print("NiMaBi")
  -- print(config.key_names) -- {"apikey"}
  -- print(config.hide_credentials) -- false
end

return CustomHandler
