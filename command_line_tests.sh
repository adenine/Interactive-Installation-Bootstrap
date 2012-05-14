#!/bin/bash
# This script tries to look at whether an osx 10.7 machine is ready for use
# as a machine in an interactive installation.

softwareupdate --schedule

scutil --get HostName 
scutil --get LocalHostName
scutil --get ComputerName

systemsetup -getsleep 
systemsetup -getwakeonnetworkaccess

systemsetup -getallowpowerbuttontosleepcomputer 
systemsetup -getrestartpowerfailure 

defaults read /Library/Preferences/com.apple.loginwindow

osascript -e 'tell application "System Events" to get the name of every login item'

# defaults write com.google.Keystone.Agent checkInterval 0

# defaults write com.apple.CrashReporter DialogType none