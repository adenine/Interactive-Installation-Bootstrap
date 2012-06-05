	#!/bin/bash
# This script tries to look at whether an osx 10.7 machine is ready for use
# as a machine in an interactive installation.

# check to see if software update it automatically running
echo "TURNING SOFTWARE UPDATE OFF ------------------------"
softwareupdate --schedule off

# look at all the various places that osx saves names for the computer
# echo "HOSTNAME -------------------------------------------"
# scutil --get HostName 
# scutil --get LocalHostName
# scutil --get ComputerName

# Check the sleep setting and if it is set to wake
echo "SLEEP SETTINGS SET TO NEVER ------------------------"
systemsetup -setsleep Never
systemsetup -setwakeonnetworkaccess On
systemsetup -setallowpowerbuttontosleepcomputer Off
systemsetup -setrestartpowerfailure on

# Check power up and down schedule
# echo "POWER SETTINGS -------------------------------------"
# pmset -g sched

# Look for users (omit all of the default users)
# echo "USERS ----------------------------------------------"
# dscl . list /Users | grep -v "^_"

echo "CRASH REPORTING ------------------------------------"
defaults write com.apple.CrashReporter DialogType none

echo "EXPOSE BEING DISABLED ------------------------------"
defaults write com.apple.dock mcx-expose-disabled -bool true

echo "CHECK DOCK AUTOHIDE --------------------------------"
defaults write com.apple.dock autohide -bool true #from here we can check what apps are in the dock

echo "CHECK SCREENSAVER IDLE TIME (Should be 0) ----------"
defaults -currentHost write com.apple.screensaver idleTime 0

echo "REMOTE LOGIN ----------------------------------------"
systemsetup -setremotelogin on

echo "APPLE REMOTE EVENTS ---------------------------------"
systemsetup -setremoteappleevents on

killall Dock
#echo "CHECK DASHBOARD BEING DISABLED ---------------------"
# defaults read com.apple.dashboard 

# defaults read /Library/Preferences/com.apple.loginwindow

# osascript -e 'tell application "System Events" to get the name of every login item'
