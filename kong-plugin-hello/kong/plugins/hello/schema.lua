local typedefs = require("kong.db.schema.typedefs")
local plugin_name = ({ ... })[1]:match("^kong%.plugins%.([^%.]+)")

local schema = {
  name = plugin_name,
  fields = {
    {
      consumer = typedefs.no_consumer
    },
    {
      protocols = typedefs.protocols_http
    },
    {
      config = {
        type = "record",
        fields = {
          {
            message = {
              type = "string",
              required = true,
              default = "11.0.15",
            },
          },
        },
      },
    },
  },
}

return schema
