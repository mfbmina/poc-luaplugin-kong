--- Returns the last element from a header array
--- @param header_name     string
--- @return string

local kong = kong

local get_last_header = function(header_name)

    local headers = kong.request.get_headers()

    if not headers then
        return nil
    end

    local header = headers[header_name]

    if not header then
        return nil
    end

    if type(header) == "table" then
        return header[table.getn(header)]
    end

    return header
end

return {
    get_last_header = get_last_header
}
