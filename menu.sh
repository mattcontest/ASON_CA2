#! /bin/sh
INPUT_STRING=""

while [ "$INPUT_STRING" != "quit" ]
do
    echo "Please type something in (quit to exit) " 
    read INPUT_STRING
    echo "You typed: $INPUT_STRING"
done














# #!/bin/sh
# name=$(whoami)
# echo "$name"
# #Backing up a folder and saving it as zip
# zip -r backup.zip ~/Documents/Lab6/HelloWorld
# #Creating a copy of a folder in a new location
# cp -r ~/Documents/Lab6/HelloWorld ~/Desktop
# #Displaying the current date and time
# echo "Now is $(date +%H:%M), and today is $(date +%Y/%m/%d)"
# #Exiting the script
# exit 0