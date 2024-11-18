#!/bin/bash

echo "Uninstalling Google s#!t"

source ./modules/bar.sh

# List of bloatware applications
google_bloat_list=(
     com.google.android.music  #google music
     com.google.android.apps.youtube.music.setupwizard  #google youtube system music
     com.google.android.apps.subscriptions.red    #google red AD
     com.google.android.videos   #google play videos
     com.google.android.apps.photos     #google photos
     com.android.android.apps.maps   # google maps
     com.google.android.apps.tachyon   #google duo / meets
     com.google.android.apps.nbu.files  #google files
     com.google.android.apps.docs    #google drive
     com.google.android.apps.docs.editors.sheets #google sheets
     com.google.android.apps.docs.editors.sheets  #google slides
     com.google.chrome   #google chrome
     com.android.chrome   #google chrome
     com.google.android.gm    #google gmail
     com.google.android.googlequicksearchbox   #google app
     com.google.android.calendar    # google calendar
     com.google.android.apps.wellbeing   # digital wellbeing
     com.google.android.apps.podcasts    # google podcasts
     com.google.android.apps.magazines    # google news
     com.google.android.apps.walletnfcrel   #google wallet
     com.google.ar.core   #play service for AR
     com.google.android.projection.gearhead   # andoid auto
     com.google.android.calculator  # google calculator
     com.google.android.apps.photosgo  # google gallery
     com.google.android.apps.chromecast.app  # google home
     com.google.android.apps.fitness   # google fit
     com.google.ar.lens  # google lens
     com.google.android.keep  # google keeps
     com.google.android.apps.nbu.paisa.user   # google pay
     com.google.android.videos    # google TV
     com.google.android.apps.safetyhub   # google safety
     com.google.android.apps.recorder   # google recorder
     com.google.android.youtube   # google youtube
     com.google.android.wearable.weather # google weather
     com.google.android.apps.youtube.kids
)

# Function to check and uninstall applications
uninstall_bloatware() {
    for app in "${google_bloat_list[@]}"; do
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
