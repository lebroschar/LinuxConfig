# PERSONAL LINUX CONFIGURATION, a la lebroschar
## Optimized for Windows Subsystem for Linux (Ubuntu) and Azure Data Science
## Virtual Machines.  Optimized for the xterm console.


## Steps

1) Pull this git repository down locally:
    > git clone https://github.com/lebroschar/LinuxConfig.git config

   * Files in the repository include:
      - .bashrc : Automatically runs when you start Ubuntu.  Applies user-
                  defined configurations.
      - .bash_aliases : Automatically runs when you start Ubuntu.  Applies
      		        user-defined shortcut commands.
      - .emacs  : Automatically runs when you start emacs.  Contains user-
                  defined modifications to the behavior of the "emacs" text
		  editor.
      - .Xresources:  
      - windows_updates   : Adds a link to your local Windows file system.
      - install_packages : Ensures basic Ubuntu packages, Anaconda Python 3,
                           and python packages are installed.
      - add_links : Links git repository files to the right places in the Linux
                    file system.

2) Execute the 'add_links' script to setup the downloaded configuration scripts
   to execute by default.

      > source config/add_links

3) Restart Ubuntu.

   * Close the window by pressing Ctrl-D or with the mouse.

   * Upon restart, the Linux prompt should be a little more colorful.

4) Update all the installed packages.

      > source config/install_packages


## Additional Steps for Windows Subsystem for Linux

1) Activate the Windows Substem for Linux and install Ubuntu:

    https://docs.microsoft.com/en-us/windows/wsl/install-win10

2) Install ‘Xming’ to allow Linux to open Windows on your desktop.

    https://sourceforge.net/projects/xming/

   * There are alternative (and likely better) programs to do the same job,
     but I’ll present details specific to Xming.

3) Make a shortcut to you local Windows file system inside Linux.

   * Open config/windows_updates for editing.

       > emacs config/windows_updates

   * Change ALIAS to your Microsoft alias.

   * Save and exit
      - Save:  Ctrl-x Ctrl-s
      - Exit:  Ctrl-x Ctrl-c

   * Run the script you just edited:

         > source config/windows_updates

   * Your Windows "Documents" directory can now be reached as 'local_files'.

4) Setup Xming for use with a local Ubuntu instance.

   * Copy the 'xming.bat' file to your Windows desktop.
       > cp config/xming.bat /mnt/c/Users/<MS_ALIAS>/Desktop

   * Close out of Xming if it's open (check the system tray for an X-shaped
     icon).

   * Run the xming.bat file from your Windows desktop.

   * From Ubuntu, type:

       > xeyes

        to test if Xming is working.  You should see an interesting new window
	open.

   * --optional-- Copy 'xming.bat' to your Windows startup folder so you don't
     have to remember to start it.  It seems you have to do this from within
     Windows, so copy 'xming.bat' from your Desktop to:
        "C:ProgramData/Microsoft/Windows/Start Menu/Programs/StartUp"

5) Now you should be ready to go!

   * Cut-and-paste between Windows and Ubuntu is a little tricky.
       * Right-click on your Ubuntu window title bar, select 'Properties',
         and verify that 'QuickEdit Mode' is active.
       * **IMPROVE** Sometimes, cut-and-paste by highlighting source, then
         right-clicking at the destination. Other times, regular Ctrl-c,
	 Ctrl-v paradigm works.
	     

## Additional Steps for setting up on an Azure Virtual Machine

****UNDER DEVELOPMENT***

1) Create a Ubuntu VM in portal.azure.com
  - Leave the SSH and RDP ports open

2) SSH into your VM (use the IP from portal.azure.com)

3) Update Ubuntu installation
  > sudo apt-get update

4) Install a desktop GUI (will take several minutes)
  > sudo apt-get install lxde -y

5) Install remote desktop support
  > sudo apt-get install xrdp -y

6) Start the xrdp service
  > /etc/init.d/xrdp start

7) Go to step X) in "Setting up Bash in Windows"

