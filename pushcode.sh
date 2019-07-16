#!/bin/bash

# This is the entry point into this tiny application
# This message serves as the commit message for this whole thing
echo "Enter commit message:"
read message

# calling the autoresponder, which in turn calls the gitscript bound to its process
./autoresponder.sh "$message"