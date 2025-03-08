// Minecraft color codes
const colorCodes = {
    '§0': '#000000', // Black
    '§1': '#0000AA', // Dark Blue
    '§2': '#00AA00', // Dark Green
    '§3': '#00AAAA', // Dark Aqua
    '§4': '#AA0000', // Dark Red
    '§5': '#AA00AA', // Dark Purple
    '§6': '#FFAA00', // Gold
    '§7': '#AAAAAA', // Gray
    '§8': '#555555', // Dark Gray
    '§9': '#5555FF', // Blue
    '§a': '#55FF55', // Green
    '§b': '#55FFFF', // Aqua
    '§c': '#FF5555', // Red
    '§d': '#FF55FF', // Light Purple
    '§e': '#FFFF55', // Yellow
    '§f': '#FFFFFF'  // White
};

// Function to replace color codes with HTML color spans
function replaceColorCodes(element) {
    for (const [code, color] of Object.entries(colorCodes)) {
        const regex = new RegExp(code, 'g');
        element.innerHTML = element.innerHTML.replace(regex, `<span style="color: ${color}">`);
    }
    // Closing span tags
    element.innerHTML = element.innerHTML.replace(/§r/g, '</span>');
}

// Apply color codes replacement to all elements
const elements = document.querySelectorAll('*');
elements.forEach(element => replaceColorCodes(element));