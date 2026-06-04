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
		print(item.name)
        if not string.find(item.name, "music_disc") then
            goto continue
            -- TODO maybe also dump the item into the ME or whatnot
        end
        local a = modchest.getItemDetail(slot)
		for key, val in pairs(a) do
			if contains({"itemGroups"=true, "tags"=true}, key) then
				for key1, val1 in pairs(val) do
					print(("%s: %s"):format(key1, val1))
				end
			else
				print(("%s: %s"):format(key, val))
			end
		end
 
		print("----------------")
        ::continue::
    end
end
 
PollDisks()