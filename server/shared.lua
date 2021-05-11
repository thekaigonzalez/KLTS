

OperatorBase = {}



OperatorBase.Detection = function ()
    if os.execute("printf") == nil then
        return "WINDOWS-NT"

    else
            return "*NIX"
        end
    end