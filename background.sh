#https://askubuntu.com/questions/66914/how-to-change-desktop-background-from-command-line-in-unity
#!/bin/bash
change_background() {
    FILE="'file://$(readlink -e "$1" )'" 
    if [ "$FILE" != "'file://'" ] 
    then
        gsettings set org.gnome.desktop.background picture-uri "$FILE" 
    else
        echo "File doesn't exist" 
    fi 
} 
