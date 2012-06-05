#!/bin/bash
# This script tries to look at whether an osx 10.7 machine is ready for use
# as a machine in an interactive installation.


# Run these as the user you are concerned with.
echo "TURN REMOTE LOGIN ON --------------------------------"
systemsetup -setremotelogin on

echo "TURN APPLE REMOTE EVENTS ON -------------------------"
systemsetup -setremoteappleevents on

echo "TURN CRASH REPORTING ON -----------------------------"
defaults write com.apple.CrashReporter DialogType none

echo "DISABLE EXPOSE --------------------------------------"
defaults write com.apple.dock mcx-expose-disabled -bool true

echo "SET DOCK AUTOHIDE TRUE ------------------------------"
defaults write com.apple.dock autohide -bool true #from here we can check what apps are in the dock

echo "SET SCREENSAVER IDLE TIME (Should be 0) -------------"
defaults -currentHost write com.apple.screensaver idleTime 0

# Must do this for some of the changes to take effect (or restart)
killall Dock
