require('server.base')
local loader = require("client.cl_serialization_handler")
AddFile("client")
SERVER_BASE:RegisterServerBase("a", "v")
loader.Directory = "base_lua_scripts"
print(loader:Begin('v')) -- return the first base with it's first value