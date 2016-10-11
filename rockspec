package = "KongJwt"
version = "1.0-1"
source = {
  url = "..."
}
description = {
  summary = "A Kong plugin.",
  license = "MIT/X11"
}
dependencies = {
  "lua ~> 5.1"
  -- If you depend on other rocks, add them here
}
build = {
  type = "builtin",
  modules = {
    -- ["kong.plugins.my-kong-plugin.api"] = "/path/to/api.lua",
    -- ["kong.plugins.my-kong-plugin.daos"] = "/path/to/daos.lua",
    ["kong.plugins.my-kong-plugin.handler"] = "/home/liqiang/Documents/Lua/KongJwt/handler.lua",
    -- ["kong.plugins.my-kong-plugin.migrations.cassandra"] = "/path/to/migrations.cassandra.lua",
    ["kong.plugins.my-kong-plugin.schema"] = "/home/liqiang/Documents/Lua/KongJwt/schema.lua"
  }
}
