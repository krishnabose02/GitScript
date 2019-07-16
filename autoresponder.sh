#!/usr/bin/expect -f

# This script acts as the automator of pushcode.sh
# pushcode.sh is responsible for actually calling the git related functions
# This script only responds to its demands for generic stuff like commit message, username and password
# Password and username is hardcoded in the script so that user doesn't need to re-enter them everytime
# But commit message is taken as input whenever it is called

# the commit message can be passed as a command line argument
set message [lindex $argv 0]

# The hardcoded credentials that need to be set
set username "USERNAME_HERE"    # Enter your github username here
set password "PASSWORD_HERE"    # Enter your github password or auth token here

# Time till the script kills itself
set timeout -1

# this is the main code, spawning it from expect essentially binds the script with itself
spawn ./pushcode.sh 

# This section deals with the actual responding

# This is supposedly triggered by pushcode.sh itself, the response here is copied and is
# used as the commit message for the particular commit

# when expect finds "Your commit message" in terminal
expect "Your commit message\r"

# respond with $message (the input user provided)
send -- "$message\r"



# pushcode is supposed to run git commit -m "$message", and then git push origin master
# That calls for the username
# When expect finds that console is waiting for username
expect -exact "$message\r
Username for 'https://github.com': "

# send the hardcoded username
send -- "$username\r"

# If everything goes right till here, it sould ask for password too
# expect sniffs for password and
expect -exact "$username\r
Password for 'https://krishnabose02@github.com': "

# sends the password back
send -- "$password\r"
expect eof
