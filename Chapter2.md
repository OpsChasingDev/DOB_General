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
- /usr/lib, /usr/bin, and /usr/sbin store binaries and libraries that are specific to user accounts, but these programs are available to all users on the system
- programs that need to be specific for a single user will be stored in the /home folder
- programs that are available to each user on the system but are unpacked in such a way where their files are not split into the typical bin/lib locations will be stored in the /opt folder