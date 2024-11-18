#!/bin/bash

echo "Uninstalling facebook s#!t"

source ./modules/bar.sh

# List of bloatware applications
facebook_bloat_list=(
    com.facebook.katana #facebook app
    com.facebook.appmanager #facebook related services
    com.facebook.services #facebook related services
    com.facebook.system  #facebook related services
)

# Function to check and uninstall applications
uninstall_bloatware() {
    for app in "${facebook_bloat_list[@]}"; do
        # Check if the app is installed
        if adb shell pm list packages | grep -q "$app"; then
            echo "Uninstalling $app..."
            adb uninstall --user 0 "$app" && echo "$app uninstalled successfully." || echo "Failed to uninstall $app."
        else
            echo "$app is not installed on the device."
        fi
    done
}

# Execute the uninstall function
uninstall_bloatware
