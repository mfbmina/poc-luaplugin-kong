package = "kong-plugin-hello"

version = "0.1.0-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/PicPay/lua-kong-plugins.git",
  tag = "0.1.0"
}

description = {
  summary = "Verify App Version",
  homepage = "http://github.com/PicPay/lua-kong-plugins",
  license = ""
}

dependencies = {
  "semver"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".access"] = "kong/plugins/"..pluginName.."/access.lua",
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".request"] = "kong/plugins/"..pluginName.."/request.lua",
  },
}
