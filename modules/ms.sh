#!/bin/bash

echo "Uninstalling facebook s#!t"

source ./modules/bar.sh

# List of bloatware applications
microsoft_bloat_list=(
     com.microsoft.office.outlook   # microsoft outlook
     com.microsoft.office.word   # microsoft word
     com.microsoft.office.eccel   # microsoft excel
     com.microsoft.office.powerpoint   #microsoft powerpoint
     com.microsoft.skydrive    # microsoft onedrive
     com.skype.raider  # microsoft onedrive
     com.linkedin.android   #linkedin
)

# Function to check and uninstall applications
uninstall_bloatware() {
    for app in "${microsoft_bloat_list[@]}"; do
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
