local request = require("kong.plugins.hello.request")
local kong = kong

return function(self, config)
  local host = request.get_last_header("host")
  if not host then
    return
  end

  local message = config["message"]

  kong.response.set_header("x-hello-from-lua", "Lua says " .. message .. " to " .. host)
end
