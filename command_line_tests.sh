	#!/bin/bash
# This script tries to look at whether an osx 10.7 machine is ready for use
# as a machine in an interactive installation.

# check to see if software update it automatically running
echo "SOFTWARE UPDATE ------------------------------------"
softwareupdate --schedule

# look at all the various places that osx saves names for the computer
echo "HOSTNAME -------------------------------------------"
scutil --get HostName 
scutil --get LocalHostName
scutil --get ComputerName

# Check the sleep setting and if it is set to wake
echo "SLEEP SETTINGS -------------------------------------"
systemsetup -getsleep 
systemsetup -getwakeonnetworkaccess
systemsetup -getallowpowerbuttontosleepcomputer 
systemsetup -getrestartpowerfailure 

# Check power up and down schedule
echo "POWER SETTINGS -------------------------------------"
pmset -g sched

# Look for users (omit all of the default users)
echo "USERS ----------------------------------------------"
dscl . list /Users | grep -v "^_"

echo "CRASH REPORTING ------------------------------------"
defaults read com.apple.CrashReporter DialogType

echo "CHECK EXPOSE BEING DISABLED ------------------------"
defaults read com.apple.dock mcx-expose-disabled

echo "CHECK DOCK AUTOHIDE --------------------------------"
defaults read com.apple.dock autohide #from here we can check what apps are in the dock

echo "CHECK SCREENSAVER IDLE TIME (Should be 0) ----------"
defaults -currentHost read com.apple.screensaver idleTime

echo "REMOTE LOGIN ----------------------------------------"
systemsetup -getremotelogin 

echo "APPLE REMOTE EVENTS ---------------------------------"
systemsetup -getremoteappleevents 

#echo "CHECK DASHBOARD BEING DISABLED ---------------------"
# defaults read com.apple.dashboard 

# defaults read /Library/Preferences/com.apple.loginwindow

# osascript -e 'tell application "System Events" to get the name of every login item'
