


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


