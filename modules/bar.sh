#!/bin/bash

# Candy characters to animate
# candy=("🍬" "🍭" "🍫" "🍩")
candy=("*" "#" "+" "=")

# Function to display the progress bar
candy_progress_bar() {
    local progress=0
    local total=100
    local bar_length=50

    while [[ $progress -le $total ]]; do
        # Calculate the number of candies and spaces
        local filled=$((progress * bar_length / total))
        local empty=$((bar_length - filled))
        
        # Generate the candy wave
        local bar=""
        for ((i = 0; i < filled; i++)); do
            bar+="${candy[RANDOM % ${#candy[@]}]}"
        done
        for ((i = 0; i < empty; i++)); do
            bar+=" "
        done

        # Display the progress bar
        echo -ne "\r[${bar}] ${progress}%"
        
        # Simulate progress
        progress=$((progress + 1))
        sleep 0.02
    done
        echo ""

}

# Call the function
candy_progress_bar
