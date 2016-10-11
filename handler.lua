-- handler.lua
-- local jwt = require "luajwt"
local BasePlugin = require "kong.plugins.base_plugin"
local CustomHandler = BasePlugin:extend()
local responses = require "kong.tools.responses"
local get_headers = ngx.req.get_headers

function CustomHandler:new()
  CustomHandler.super.new(self, "KongJwt")
end

function CustomHandler:access(config)
  CustomHandler.super.access(self)

  local headers = get_headers()
  local token = headers["token"]
  print(token)
  if not token then
    ngx.header["WWW-Authenticate"] = _realm
    return responses.send_HTTP_UNAUTHORIZED("No API key found in headers")
  end
end

return CustomHandler
