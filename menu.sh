#! /bin/sh
INPUT_STRING=""

clearScreen(){
    clear
}

addWebUser(){
    echo "Which user to add to the intranet group?"
    read user
    sudo usermod -G intranet $user
}

listUsers(){
    awk -F: '$3 >= 1000 {print $1}' /etc/passwd
}


backupIntranetDir(){
    #Backing up the Intranet FOlder and saving it as zip
    zip -r "/var/www/backups/$(date +%d-%m-%y_%H:%M)_intranet_backup.zip" /var/www/html/intranet
}

backupLiveDir(){
    #Backing up the Intranet FOlder and saving it as zip
    zip -r "/var/www/backups/$(date +%d-%m-%y_%H:%M)_live_backup.zip" /var/www/html/live
    echo "Backup for live ~ Created"
}

auditReport(){
    #Creating an Audit Report
    #Here it asks for root password to log the last movements.
    su -c "/usr/sbin/ausearch -k intranet_watch --start recent | /usr/sbin/aureport -f -i > /var/www/backups/audit_report.txt"
    echo "Audit Report created. Available @ backups"
    cat /var/www/backups/audit_report.txt
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
    echo "q. Quit"
    echo "Enter your choice :  "
    
    read userChoice
    # clear
    case $userChoice in
        1) echo "List of Users: " ; listUsers;;
        2) addWebUser;;
        3) backupIntranetDir;;
        4) backupLiveDir;;
        5) echo "Running Option 5";;
        6) auditReport;;
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