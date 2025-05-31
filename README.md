


Based on my analysis of your BloatBanisher project, here's a comprehensive README.md that would best represent your project:

# 🧹 BloatBanisher

**The Ultimate Android Bloatware Removal Tool**

A powerful, menu-driven bash script designed to help you reclaim your Android device by removing unwanted bloatware applications using ADB (Android Debug Bridge).

## ✨ Features

- **🎯 Menu-Driven Interface**: Easy-to-use interactive menu for seamless navigation [1](#0-0) 
- **🏭 Multi-Manufacturer Support**: Supports bloatware removal for major manufacturers:
  - Facebook [2](#0-1) 
  - Google [3](#0-2) 
  - Microsoft [4](#0-3) 
  - Motorola [5](#0-4) 
  - Samsung [6](#0-5) 
  - Xiaomi/Mi/Poco [7](#0-6) 
  - AOSP [8](#0-7) 

- **🔧 Automatic ADB Management**: Detects and installs ADB on various Linux distributions [9](#0-8) 
- **📱 Device Management**: List connected devices and installed applications [10](#0-9) 
- **🛡️ Safe Removal**: Checks if applications are installed before attempting removal [11](#0-10) 
- **📦 Modular Design**: Organized codebase with separate modules for different functionalities [12](#0-11) 

## 🚀 Quick Start

### Prerequisites

- **Linux-based Operating System** (Ubuntu, Debian, Fedora, Arch, openSUSE, etc.)
- **Android device** with USB Debugging enabled
- **USB cable** to connect your device

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/roxxadiiii/BloatBanisher.git
   cd BloatBanisher
   ```

2. **Make the script executable:**
   ```bash
   chmod +x BloatBanisher.sh
   ```

3. **Run the script:**
   ```bash
   ./BloatBanisher.sh
   ```

The script will automatically check for ADB installation and install it if needed [13](#0-12) .

## 📱 Enable USB Debugging

Before using BloatBanisher, enable USB Debugging on your Android device:

1. Go to **Settings** → **About Phone**
2. Tap **Build Number** 7 times to enable Developer Options
3. Go to **Settings** → **Developer Options**
4. Enable **USB Debugging**
5. Connect your device and authorize the computer when prompted

## 🎮 Usage

![BloatBanisher Menu](images/menu-screenshot.png)

The script provides an intuitive menu interface [14](#0-13) :

1. **List Connected Devices** - Verify your device connection
2. **List All Installed Apps** - View all packages on your device
3. **Remove Facebook Bloat** - Remove Facebook-related applications
4. **Remove Google Bloat** - Remove Google services and apps
5. **Remove Microsoft Bloat** - Remove Microsoft Office and related apps
6. **Remove Motorola Bloat** - Remove Motorola-specific bloatware
7. **Remove Samsung Bloat** - Remove Samsung proprietary apps
8. **Remove Xiaomi/Mi/Poco Bloat** - Remove MIUI bloatware
9. **Remove AOSP Bloat** - Remove Android Open Source Project bloat
10. **Exit** - Close the application

### Example: Removing Google Bloatware

The Google bloatware removal module targets common Google applications that users often want to remove [15](#0-14) :

- Google Music, YouTube Music, Play Videos
- Google Photos, Drive, Docs, Sheets, Slides
- Google Chrome, Gmail, Calendar
- Google Pay, Lens, Keep, Fit
- And many more...

## ⚠️ Important Safety Information

**🔴 WARNING: Use at your own risk!**

- **Backup your device** before removing any applications
- Some removed apps may be **difficult or impossible to restore** without factory reset
- **System stability** may be affected if critical system apps are removed
- **Review the package lists** in the modules before running removal operations

## 🏗️ Project Structure

```
BloatBanisher/
├── BloatBanisher.sh      # Main script with menu interface
├── CodeCombiner.sh       # Utility for combining code files
├── push2git.sh          # Git automation script
├── modules/             # Modular components
│   ├── bar.sh          # Progress bar utility
│   ├── checkAdb.sh     # ADB installation checker
│   ├── google.sh       # Google bloatware removal
│   ├── menu.sh         # Menu utilities
│   └── ms.sh           # Microsoft bloatware removal
└── README.md           # Project documentation
```

## 🛠️ Supported Linux Distributions

The script automatically detects and installs ADB on [16](#0-15) :

- **Ubuntu/Debian** (using apt)
- **Fedora/RHEL** (using dnf)
- **Arch/Manjaro** (using pacman)
- **openSUSE** (using zypper)

## 🔧 Troubleshooting

### ADB Not Detected
- Ensure USB Debugging is enabled on your device
- Try different USB cables or ports
- Check if your device appears in `adb devices`

### Permission Denied
- Run the script with appropriate permissions
- Ensure your user has access to ADB

### App Not Found
The script safely checks if apps exist before removal [17](#0-16) , so "app not found" messages are normal and safe.

## 🤝 Contributing

Contributions are welcome! To add support for new manufacturers or improve existing functionality:

1. Fork the repository
2. Create a new module in the `modules/` directory
3. Follow the existing code structure and safety checks
4. Test thoroughly on your device
5. Submit a pull request

## 📄 License

This project is open source. Please use responsibly and at your own risk.

## 🙏 Acknowledgments

- **Android Debug Bridge (ADB)** - The foundation that makes this tool possible
- **Open Source Community** - For continuous support and feedback
- **Device Manufacturers** - For providing package information

## 🔗 Useful Links

- [Android Developer - ADB Documentation](https://developer.android.com/studio/command-line/adb)
- [XDA Developers - ADB Guide](https://www.xda-developers.com/install-adb-windows-macos-linux/)

---

**Created with ❤️ by [roxxadiiii](https://github.com/roxxadiiii)**

*Remember: With great power comes great responsibility. Use BloatBanisher wisely!*
