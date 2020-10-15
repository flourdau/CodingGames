--[[
multi
line
comment
]]

function find_highest (array)
    max, index = 0, 0 -- https://www.tutorialspoint.com/lua/lua_variables.htm
    
    for i = 0, 7 do
        if array[i] > max then
            max = array[i]
            index = i
        end
    end
    
    return index
end

while true do
    local heights = {}
    local mountainH

    for i = 0, 7 do
        mountainH = tonumber(io.read()) -- represents the height of one mountain.
        --table.insert(heights, i, mountainH)
        heights[i] = mountainH
        
    end
    
    -- Write an action using print()
    -- To debug: io.stderr:write("Debug message\n")
    
    print(find_highest(heights)) -- The index of the mountain to fire on.

end