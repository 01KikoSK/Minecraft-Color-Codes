# Minecraft Color Codes in Python
class MinecraftColor:
    COLOR_CODES = {
        '0': '\033[30m',  # Black
        '1': '\033[34m',  # Dark Blue
        '2': '\033[32m',  # Dark Green
        '3': '\033[36m',  # Dark Aqua
        '4': '\033[31m',  # Dark Red
        '5': '\033[35m',  # Dark Purple
        '6': '\033[33m',  # Gold
        '7': '\033[37m',  # Gray
        '8': '\033[90m',  # Dark Gray
        '9': '\033[94m',  # Blue
        'a': '\033[92m',  # Green
        'b': '\033[96m',  # Aqua
        'c': '\033[91m',  # Red
        'd': '\033[95m',  # Light Purple
        'e': '\033[93m',  # Yellow
        'f': '\033[97m',  # White
        'r': '\033[0m'    # Reset
    }

    @staticmethod
    def format_text(text):
        """Formats a string using Minecraft-style color codes."""
        result = text
        for code, color in MinecraftColor.COLOR_CODES.items():
            result = result.replace(f'§{code}', color)  # Replace §X with ANSI color
        return result + MinecraftColor.COLOR_CODES['r']  # Add reset code at the end

# Example usage
if __name__ == '__main__':
    text = "§1Dark Blue §2Dark Green §6Gold §cRed §fWhite"
    print(MinecraftColor.format_text(text))
