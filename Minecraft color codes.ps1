# Define Minecraft color codes
$MinecraftColors = @{
    "0" = "`e[30m"   # Black
    "1" = "`e[34m"   # Dark Blue
    "2" = "`e[32m"   # Dark Green
    "3" = "`e[36m"   # Dark Aqua
    "4" = "`e[31m"   # Dark Red
    "5" = "`e[35m"   # Dark Purple
    "6" = "`e[33m"   # Gold
    "7" = "`e[37m"   # Gray
    "8" = "`e[90m"   # Dark Gray
    "9" = "`e[94m"   # Blue
    "a" = "`e[92m"   # Green
    "b" = "`e[96m"   # Aqua
    "c" = "`e[91m"   # Red
    "d" = "`e[95m"   # Light Purple
    "e" = "`e[93m"   # Yellow
    "f" = "`e[97m"   # White
    "r" = "`e[0m"    # Reset
}

# Function to format text with Minecraft color codes
function Format-MinecraftText {
    param (
        [string]$Text
    )
    $FormattedText = $Text
    foreach ($Code in $MinecraftColors.Keys) {
        $FormattedText = $FormattedText -replace "§$Code", $MinecraftColors[$Code]
    }
    return "$FormattedText`e