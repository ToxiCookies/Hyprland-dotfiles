#!/bin/bash
# Fetch weather directly (simpler and less prone to grep errors)
weather=$(curl -sf "wttr.in/Riverside+California?u&format=%c+%t")
if [ -z "$weather" ]; then
    echo "Weather Unavailable"
else
    echo "$weather"
fi
