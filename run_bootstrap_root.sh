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


