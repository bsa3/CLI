


#grep uptime
systeminfo /s %COMPUTERNAME% | findstr Time

# findstr /i "name state"  # grep for 2 items

#https://technet.microsoft.com/en-us/library/cc732503(v=ws.11).aspx
shutdown /r /m \\%COMPUTERNAME% /d u:4:1 /t 3 /f  #force unplanned application maint

/a abort system shutdown 
/e Document the reason for an unexpected shutdown of a computer.
/d [p|u:]xx:yy Provide the reason for the restart or shutdown.
  p indicates that the restart or shutdown is planned.  (also e=expected, c=customer defined)
  u indicates that the reason is user defined. If neither p nor u is specified the restart or shutdown is unplanned. 
  xx is the major reason number (positive integer less than 256).
  yy is the minor reason number (positive integer less than 65536).
#http://ss64.com/nt/shutdown.html #reasons
/c "comment" Comment on the reason for the restart or shutdown. Maximum of 512 characters allowed.
/t xxx Set the time-out period before shutdown to xxx seconds.
/g Shutdown and restart the computer. After the system is rebooted, restart any registered applications.

shutdown /r /m \\computer


#http://windowsitpro.com/systems-management/what-environment-variables-are-available-windows
#Windows 2003 Server Local And System Environment Variables


%ALLUSERSPROFILE% #Echoes the all Users Profile.
%APPDATA% #Echoes where application data is stored by default.
%CD% #Echoes the current working directory string.
%CMDCMDLINE% #Echoes the command line used to start the current Cmd.exe.
%LOGONSERVER% #Echoes the Domain Controller (DC) that validated the current logon session.
%PROMPT% #Echoes the command prompt settings for the current interpreter.
%USERDOMAIN% #Echoes the domain name where the user account exists.
%USERNAME% #Echoes the user name of the current logged on user.
%USERPROFILE% #Echoes the Returns the location of the profile for the current user.

#System

%CMDEXTVERSION% #Echoes the version number of the current Command processor’s extensions.
%COMPUTERNAME% #Echoes the name of the computer.
%COMSPEC% #Echoes the path of the Command shell exe.
%DATE% #Echoes the current date.
%ERRORLEVEL% #Echoes the last error code for the last command issued.
%HOMEDRIVE% #Echoes the current logged on users home directory drive letter.
%HOMEPATH% #Echoes the path to the current logged on users home directory.
%HOMESHARE% #Echoes the network path of  the current logged on users shared home directory.
%NUMBER_OF_PROCESSORS% #Echoes the number of processors installed.
%OS% #Echoes the Operating System name.
%PATH% #Echoes the Path contents.
%PATHEXT% #Echoes the file extensions list the operating system deems as executable.
%PROCESSOR_ARCHITECTURE% #Echoes the chip processor architecture.
%PROCESSOR_IDENTFIER% #Echoes the processors description.
%PROCESSOR_LEVEL% #Echoes the processors model number.
%PROCESSOR_REVISION% #Echoes the processors revision number.
%RANDOM% #Echoes a randomized number from 0 to 32767.
%SYSTEMDRIVE% #Echoes the System Root directory drive letter hosting the Operating System.
%SYSTEMROOT% #Echoes the Operating Systems system root directory drive letter and directory name.
%TIME% #Echoes the Operating Systems current time.
%WINDIR% #Echoes the Operating Systems drive letter and directory name.
