loader ={}



--if directories set up correctly.
function loader:Begin(opt)
    if loader.Directory == nil then
        return

    else
        if opt == 'v' then
            -- return a table with all of the spec
            function loadlibs(Dir)
                if Dir == nil then
                    return nil
                end
                local c = require(Dir .. "/client.lua")
                local s = require(Dir .. "/server.lua")
                local sc = require(Dir .. "/shared.lua")
                local t= {c,s,sc}
                return t
            end

                print("L: LOAD " .. loader.Directory .. "/client")
                print("L: LOAD " .. loader.Directory .. "/server")
            print("L: LOAD " .. loader.Directory .. "/shared")
            loadlibs(loader.Directory)
        end
    end
end


return loader