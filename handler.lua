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
  local apikey = headers["apikey"]
  print(apikey)
end

return CustomHandler
