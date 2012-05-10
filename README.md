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
    $ scutil –-get HostName new_hostname
    $ scutil –-get LocalHostName new_hostname
    $ scutil –-get ComputerName new_hostname

#### Change them...
    $ scutil –-set HostName new_hostname
    $ scutil –-set LocalHostName new_hostname
    $ scutil –-set ComputerName new_hostname