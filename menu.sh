#! /bin/sh
INPUT_STRING=""

clearScreen(){
    clear
}

while [ "$INPUT_STRING" != "quit" ]
do
    clearScreen
    echo "-----------------------------"
    echo "     --Website Panel--       "
    echo "-----------------------------"
    echo "1. List Users"
    echo "2. Add User to WebGroup"
    echo "3. Backup Intranet Directory"
    echo "4. Backup Live Directory"
    echo "5. Transfer Updates to Website"
    echo "6. Audit Reports"
    echo "7. System Health Reports"
    echo "q. Quit"
    echo "Enter your choice :  "
    
    read userChoice
    # clear
    case $userChoice in
        1) echo "Running Option 1";;
        2) echo "Running Option 2";;
        3) echo "Running Option 3";;
        4) echo "Running Option 4";;
        5) echo "Running Option 5";;
        6) echo "Running Option 6";;
        7) echo "Running Option 7";;
        q) break;;
        *) echo "Invalid Option";;
    esac
    

    echo "Press any key to continue: "
    read key
    # clear

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