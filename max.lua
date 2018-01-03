-- open and check file
local file = io.open("nums.txt","r")
if file == nil then
    io.flush()
    print("File cannot be opened.")
    return
end

-- read through file and add numbers to array
local arr = {}
for line in file:lines() do
    table.insert(arr,tonumber(line))
end

-- return if array is empty
if next(arr) == nil then
    print ("The array is empty.")
    return
end

-- iterate through array and compare max to value at current index
local max = arr[1]
for k,v in pairs(arr) do
    if v > max then
        max = v
    end
end

print("The maximum is ",max)
