local modchest = peripheral.find("sophisticatedstorage:chest")
local chest = peripheral.find("minecraft:chest")

local knowndisks = {}
local playcycle = {}

function append(set, key) 
    set[key] = true
end

function pop(set, key) 
    set[key] = nil
end

function contains(set, key) 
    return set[key] ~= nil
end

function PollDisks()
    for slot, item in pairs(modchest.list()) do
        if not item.name.findstr("music_disc") then
            goto continue
            -- TODO maybe also dump the item into the ME or whatnot
        end
        print(item.displayName)

        ::continue::
    end
end

PollDisks()