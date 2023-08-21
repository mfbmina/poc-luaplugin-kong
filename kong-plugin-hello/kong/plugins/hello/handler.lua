local access = require("kong.plugins.hello.access")

local Hello = {
  PRIORITY = 1950,
  VERSION = "1.0.0"
}

Hello.access = access

return Hello
