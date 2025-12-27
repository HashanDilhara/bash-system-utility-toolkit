#!/bin/bash

while true
do
    echo "=============================="
    echo "   System Utility Toolkit"
    echo "=============================="
    echo "1. Show system information"
    echo "2. Check disk usage"
    echo "3. Check memory usage"
    echo "4. Check file permissions"
    echo "5. Exit"
    echo "------------------------------"
    read -p "Choose an option: " choice

    case $choice in
        1)
            echo "User: $USER"
            echo "Hostname: $(hostname)"
            echo "Uptime:"
            uptime
            ;;
        2)
            df -h
            ;;
        3)
            free -h
            ;;
        4)
            read -p "Enter file name: " file
            if [ -e "$file" ]; then
                ls -l "$file"
            else
                echo "File not found!"
            fi
            ;;
        5)
            echo "Thank You"
            break
            ;;
        *)
            echo "Invalid option. Try again."
            ;;
    esac

    echo
done
