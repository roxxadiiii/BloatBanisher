#!/bin/bash
echo "Checking if adb is installed or not"
source ./modules/bar.sh
# Check if `adb` is installed
if ! command -v adb &> /dev/null; then
    echo "Error: adb is not installed. Attempting to install adb..."
    echo "starting to install adb according to your system"
    source ./bar.sh
    # Detect Linux distribution
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        case "$ID" in
            ubuntu|debian)
                echo "Detected $NAME. Installing adb using apt..."
                sudo apt install -y adb
                ;;
            fedora|rhel)
                echo "Detected $NAME. Installing adb using dnf..."
                sudo dnf install -y android-tools
                ;;
            arch|manjaro)
                echo "Detected $NAME. Installing adb using pacman..."
                sudo pacman -S --noconfirm android-tools
                ;;
            opensuse*)
                echo "Detected $NAME. Installing adb using zypper..."
                sudo zypper install -y android-tools
                ;;
            *)
                echo "Unsupported Linux distribution: $NAME"
                echo "Please install adb manually and try again."
                exit 1
                ;;
        esac
    else
        echo "Could not detect Linux distribution."
        echo "Please install adb manually and try again."
        exit 1
    fi

    # Verify if installation was successful
    if ! command -v adb &> /dev/null; then
        echo "Error: adb installation failed. Please check your package manager and try again."
        exit 1
    else
        echo "adb installed successfully!"
    fi
else
    echo "adb is already installed."
fi
