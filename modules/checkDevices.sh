#!/bin/bash

echo "Checking if any device is connected or not..........????"

source ./modules/bar.sh

if ! adb devices | grep -q "device$"; then
    echo "No devices connected. Please connect a device and try again."
    exit 1
fi

echo "Device found "