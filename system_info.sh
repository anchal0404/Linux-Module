#!/bin/bash
<<DOC
NAME:ANCHAL RATHORE
DATE:06/04/2023 
DESCRIPTION:Script to print system information using commands.
SAMPLE INPUT:2 
SAMPLE OUTPUT:Your shell directory is /bin/bash
DOC
option=y
while [ $option != n ]
do
    echo "1. Currently logged users"
    echo "2. Your shell directory"
    echo "3. Home directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Show all available shells in your system"
    echo "8. Hard disk information"
    echo "9. CPU information"
    echo "10. Memory Informations"
    echo "11. File system information."
    echo "12. Currently running process."
    read -p "Enter the choice :" choice
    
    case $choice in
        1)
            user=(`whoami`)
            echo "Currently logged user is ${user[@]}."
            ;;
        2)
            shell=(`printenv SHELL`)
            echo "Your shell directory is ${shell[@]}."
            ;;
        3)
            home=(`printenv HOME`)
            echo "Home directory is ${home[@]}."
            ;;
        4)
            OS=(`uname -a`)
            echo "OS name & version is ${OS[@]}."
            ;;
        5)
            work=(`pwd`)
            echo "Current working directory ${work[@]}."
            ;;
        6)
            who -q > number.txt
            number=(`tail -2 number.txt`)
            echo "Number of user logged in ${number[@]}."
            ;;
        7)
            syshell=(`tail -4 /etc/shells`)
            echo "All the available shells in you system are ${syshell[@]}."
            ;;
        8)
            sudo lshw > disk.txt
            hard_disk=(`head -34 disk.txt`)
            echo "Hard disk information ${hard_disk[@]}."
            ;;
        9)
            lscpu > cpu.txt
            cpu=(`head -23 cpu.txt`)
            echo "CPU infomation ${cpu[@]}."
            ;;
        10)
            meminfo=(`cat /proc/meminfo`)
            echo "Memory Information ${meminfo[@]}."
            ;;
        11)
            file_sys=(`df`)
            echo "File system information ${file_sys[@]}."
            ;;
        12)
            run=(`ps`)
            echo "Currently running process ${run[@]}."
            ;;
        *)
            echo "Error : Invalid option, please enter valid option." 

    esac

    read -p "Dou you want to continue(y/n)?" option
done  
