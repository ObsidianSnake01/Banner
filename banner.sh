#!/bin/bash

# Set the banner text
banner_text="Running command: $@"

# Calculate the number of dashes needed to fill the terminal width
term_width=$(tput cols)
dashes=$(printf "%-${term_width}s" "")
dashes=${dashes// /-}

# Clear the screen and display the banner
clear
echo "$dashes"
printf "%*s\n" $(((${#banner_text}+$term_width)/2)) "$banner_text"
echo "$dashes"
echo

# Wait for the user to press enter
read -p "Press enter to continue... "

# Run the specified command
$@
