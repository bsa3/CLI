Net user <username> /DOMAIN  #lots of info

#To check if the user account is locked type in the command:
net user <username> /DOMAIN | FIND /I "Account Active"

The account will either be Locked "No" or active "Yes".

# unlock
#if they are locked you can then type in:
Net user <username> /DOMAIN /active:YES

#or if you want to reset their password you can use this command:
net user <username> <newpassword> /DOMAIN /Active:Yes
