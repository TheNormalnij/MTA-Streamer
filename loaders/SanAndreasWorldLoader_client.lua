
---@class SanAndreasWorldLoader : ILoader, IWithDestructor
SanAndreasWorldLoader = class()

function SanAndreasWorldLoader:destroy()

end

function SanAndreasWorldLoader:load()
    local restoreWorldModel = restoreWorldModel
    for i = 550, 19999 do
        restoreWorldModel(i,10000,0,0,0)
    end
    setOcclusionsEnabled( true )
    resetWaterLevel()

    return true
end

function SanAndreasWorldLoader:unload()
    local removeWorldModel = removeWorldModel
    for i = 550, 20000 do
        removeWorldModel(i,10000,0,0,0)
    end
    setOcclusionsEnabled( false )
    setWaterLevel( -5000, true, true, true, false )

    return true
end
