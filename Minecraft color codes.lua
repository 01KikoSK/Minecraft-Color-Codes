-- Define Minecraft color codes with ANSI escape sequences for terminal colors
local MinecraftColors = {
    ["0"] = "\27[30m",   -- Black
    ["1"] = "\27[34m",   -- Dark Blue
    ["2"] = "\27[32m",   -- Dark Green
    ["3"] = "\27[36m",   -- Dark Aqua
    ["4"] = "\27[31m",   -- Dark Red
    ["5"] = "\27[35m",   -- Dark Purple
    ["6"] = "\27[33m",   -- Gold
    ["7"] = "\27[37m",   -- Gray
    ["8"] = "\27[90m",   -- Dark Gray
    ["9"] = "\27[94m",   -- Blue
    ["a"] = "\27[92m",   -- Green
    ["b"] = "\27[96m",   -- Aqua
    ["c"] = "\27[91m",   -- Red
    ["d"] = "\27[95m",   -- Light Purple
    ["e"] = "\27[93m",   -- Yellow
    ["f"] = "\27[97m",   -- White
    ["r"] = "\27[0m"     -- Reset
}

-- Function to format text with Minecraft color codes
local function formatMinecraftText(text)
    for code, color in pairs(MinecraftColors) do
        text = text:gsub("§" .. code, color)  -- Replace §X with corresponding ANSI color
    end
    return text .. MinecraftColors["r"]  -- Add reset at the end to return text to default color
end

-- Example usage
local text = "§1Dark Blue §2Dark Green §6Gold §cRed §fWhite"
print(formatMinecraftText(text))
