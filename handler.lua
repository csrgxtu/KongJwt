-- handler.lua
-- local jwt = require "luajwt"
local BasePlugin = require "kong.plugins.base_plugin"
local CustomHandler = BasePlugin:extend()
local get_headers = ngx.req.get_headers

function CustomHandler:new()
  CustomHandler.super.new(self, "KongJwt")
end

function CustomHandler:access(config)
  CustomHandler.super.access(self)

  local headers = get_headers()
  print(headers["apikey"])
  print("NiMaBi")
  -- print(config.key_names) -- {"apikey"}
  -- print(config.hide_credentials) -- false
end

return CustomHandler
