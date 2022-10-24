## OS Stuff
- MacOS is UNIX based
- Linux was developed independently of UNIX and is *not* UNIX based
- MacOS and Linux are similar operating systems because they are both POSIX Compliant
  - POSIX = Portable Operating System Interface (most popular among OS standards)
- OS standards ensured different operating systems could be used for different devices without breaking or changing the way it works with hardware and certain softwawre components
- 4 layers to all computers:
  - Hardware
  - Kernel (OS)
  - Application layer (OS)
  - User apps

## Linux File System
- directory system is based on a single root folder
- /bin is used to store binary files
- /lib* is used to store libraries the binary executables need access to
- /sbin refers to system binaries that require elevated privileges in order to run
- /home is the user-specific folder granted to each user on the system and separate from every other user's home folder
- /usr is a directory that refers to the old system of housing user data before the home folder came into being, and this still exists for historical reasons
- /usr/lib, /usr/bin, and /usr/sbin store binaries and libraries that are system wide, nearly identical in every way to the binaries and libraries stored in the root /bin and /lib* folders
- when system commands are executed in the terminal, they are most often executed from the /usr/bin location
- programs that need to be specific for a single user will be stored in the /home folder
- programs that are available to each user on the system and have their unpacking handled in the traditional split of binaries and libraries will be stored in /usr/local, and this will be the case for most third party applications
- programs that are available to each user on the system but are unpacked in such a way where their files are not split into the typical bin/lib locations will be stored in the /opt folder - this will be the case for things like IDEs
- /media is a directory where external storage devices are mounted to when connected to the system
- /mnt will be used to mounting a file system
- /etc is a directory that was originally intended for 'et cetera' or everything else, but this has become the main directory for any settings to apps or system configs that need to be changed
- for the most part, all of the above directories are not things are you directly interfacing with; rather, package managers or applications will be manipulating things in these directories
- hidden files and folders in Linux simply have their names prepended with a '.'; these are typically system or application generated but can also be user created when necessary

## Linux CLI
- beginning information on the prompt lines shows you the user and computer you are operating on in the CLI
- the tilde '~' character represents a shortcut for the Home directory
- if the last character of the prompt line is a '$', then we are operating under the normal user account permissions
- if the last character of the prompt line is a '#', then we are operating under the root account

## Package Managers
- most commonly using built-in package managers to install/remove/manage software on Linux distributions
- Debian-based distros such as Debian and Ubuntu use "apt" and "apt-get" which is built in; "snap" is also available (fka 'snappy') but is not as ideal based on its less efficient dependency handling
- Red Hat-based distros such as RHEL and CentOS use "yum"
- alternative ways of installing software include using other package managers, adding other repositories to existing package managers, or using the Linux software installation tool included in the distro

## Linux Users and Groups
- when a new user is created, Linux also creates a group wtih the same name and sets that as the primary group for the newly created user