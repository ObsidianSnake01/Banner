#!/bin/bash

# Import the banners library
. lib/banners

# Set the banner content, color, and symbol
content="Installing CRUD."
color="blue"
symbol="*"

# Set the text color using tput
tput setaf $color

# Calculate the number of dashes needed to fill the terminal width
term_width=$(tput cols)
dashes=$(printf "%-${term_width}s" "")
dashes=${dashes// /$symbol}

# Clear the screen and display the banner
clear
echo "$dashes"
printf "%*s\n" $(((${#content}+$term_width)/2)) "$content"
echo "$dashes"
echo

# Reset the text color
tput sgr0
