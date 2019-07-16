#!/bin/bash -e

# User is supposed to enter a commit message to continue
echo "Your commit message"

# storing the commit message
read message

# calling git add . to stage the new changes
git add . &> /dev/null # also making sure that it doesn't print anything into screen

# after staging, now comes commitment
git commit -m "$message" &> /dev/null

# and finally push the stuff to github
git push origin master