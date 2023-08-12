#!/bin/zsh

# Get the path of the current active Finder window using AppleScript
finder_path=$(osascript -e 'tell application "Finder" to get POSIX path of (target of front Finder window as text)')
echo "$finder_path"
