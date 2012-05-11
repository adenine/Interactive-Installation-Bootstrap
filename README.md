Interactive-Installation-Bootstrap
==================================

These are scripts that can be used to check if a machine is set up properly for installation and to setup the correct settings for deployment. They are tested for OSX 10.7 only.


## Software Updates
#### Check them.. 
    $ softwareupdate —schedule
#### Disable them...
    $ softwareupdate —schedule off
  
## Hostname
#### Check them...
    $ scutil --get HostName 
    $ scutil --get LocalHostName
    $ scutil --get ComputerName
#### Change them...
    $ scutil --set HostName new_hostname
    $ scutil --set LocalHostName new_hostname
    $ scutil --set ComputerName new_hostname
    
## Sleep
#### Check them..
    $ systemsetup -getsleep 
#### Change them...
    $ systemsetup -setsleep Never
    $ systemsetup -setdisplaysleep Never
    $ systemsetup -setharddisksleep Never
    
## Power Issues
#### Check them...
    
#### Change them...
    $ systemsetup -setallowpowerbuttontosleepcomputer off
    $ systemsetup -setrestartpowerfailure on    

