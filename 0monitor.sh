#!/usr/bin/bash

                  #########################################################################################################
                  #                                         0Monitor.sh                                                   #
                  #                                                                                                       #
                  #                                                                                                       #                   
                  #                                                                                                       #
                  #                                                                                                       #
                  #         Author: The 0Day o_O                                                                          #
                  #         Twitter: Fuck Big Tech                                                                        #
                  #         Github: The-0Day                                                                              #
                  #         Gitlab:  The-0Day                                                                             # 
                  #         Instagram: I Don't Use That Shit                                                              #
                  #         Facebook: I Don't Want My Data To Be Available On DarkWeb Lol                                 #
                  #         Email: Zeroday_0day@protonmail.com                                                            #
                  #         Version: 0.1                                                                                  #
                  #                                                                                                       #
                  #               License: BSD License 2.0                                                                #
                  #               Note: If You Find Any BUGS From 0Monitor, PLEASE REPORT IT TO ME!                       #
                  #               Also Email Me If You Have Any Comments / Criticisms Or Suggestions - Thanks             #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #########################################################################################################






RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
BLUE=`tput setaf 4`
PURPLE=`tput setaf 5`
CYAN=`tput setaf 6`
WHITE=`tput setaf 7`
BLACK=`tput setaf 8`
ORANGE=`tput setaf 9`



clear


while getopts ivdh Name
do
        case $Name in
                i)IN=1;;
                v)V=1;;
                d)SP=1;;
                h)HP=1;;
                *)echo -e "${RED}Flag Not Found!\nPlease Use -h For Help";;
        esac
done


if [[ ! -z $IN ]]
then
        {
                path=$(pwd)
                basename "$(test -L "$0" && readlink "$0" || echo "$0")" > /tmp/scriptname
                SN=$(echo -e -n $path/ && cat /tmp/scriptname)
                su -c "cp $SN /usr/local/bin/0monitor" && echo "${GREEN}Configuration Done! Enjoy The Script :)" || echo "${RED}Configuration Failed -_-" 
        }
fi


if [[ ! -z $V ]]
then
        {

                echo -e "${YELLOW}0Monitor Tool By 0Day Released Under BSD License 2.0"
                echo  "${GREEN}


                  #########################################################################################################
                  #                                         0Monitor.sh                                                   #
                  #                                                                                                       #
                  #                                                                                                       #                   
                  #                                                                                                       #
                  #                                                                                                       #
                  #         Author: The 0Day o_O                                                                          #
                  #         Twitter: Fuck Big Tech                                                                        #
                  #         Github: The-0Day                                                                              #
                  #         Gitlab:  The-0Day                                                                             # 
                  #         Instagram: I Don't Use That Shit                                                              #
                  #         Facebook: I Don't Want My Data To Be Available On DarkWeb Lol                                 #
                  #         Email: Zeroday_0day@protonmail.com                                                            #
                  #         Version: 0.1                                                                                  #
                  #                                                                                                       #
                  #               License: BSD License 2.0                                                                #
                  #               Note: If You Find Any BUGS From 0Monitor, PLEASE REPORT IT TO ME!                       #
                  #               Also Email Me If You Have Any Comments / Criticisms Or Suggestions - Thanks             #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #                                                                                                       #
                  #########################################################################################################
                    "



        }
fi



if [[ ! -z $SP ]]
then
        if (which wget)
        then
                echo "${GREEN}wget Already Insatalled"
                echo "${WHITE}"
                speedtest=$(wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py)
                chmod +x speedtest-cli && echo "${GREEN}Dependency Install Successful" || echo "${RED}Installation Failed"
        else
                echo "${RED}wget Is Not Installed, Please Install It"
        fi
fi


if [[ ! -z $HP ]]
then
        {
                echo "

                ${RED}Welcome To The Help Menu

                ${YELLOW}-i      Installing The 0monitor On Your System, Then You Can Use 0monitor For Run.
                ${YELLOW}-v      Version And Details Of 0monitor.
                $YELLOW-d        Check The Dependences And Install Speedtest.


                "
        }
fi




if [[ $# -eq 0 ]]
then
        {

        CONT=$(tput sgr0)

        

        # Check Kernel Release
        KR=$(uname -r)
        echo "${BLUE}Kernel Release :" $CONT $KR

        # Check System Architecture
        ARCH=$(uname -m)
        echo -e "${ORANGE}System Architecture :" $CONT $ARCH

        # Check OS Release & Name & Version OS
        cat /etc/os-release | grep 'NAME\|VERSION' | grep -v 'VERSION_ID' | grep -v 'PRETTY_NAME' > /tmp/OS_Realease_Name_Version_By_0monitor
        echo -n -e "${CYAN}OS Name :" $CONT && cat /tmp/OS_Realease_Name_Version_By_0monitor | grep -v 'VERSION' | cut -f2 -d\"
        echo -n -e "${PURPLE}OS Version :" $CONT && cat /tmp/OS_Realease_Name_Version_By_0monitor | grep -v "NAME" | cut -f2 -d\"


        # Check OS Type 
        OS=$(uname -o)
        echo -e "${YELLOW}Operating System Type :" $CONT $OS

         # Check Information About Users
        WHO=$(who >/tmp/who_By_0monitor)
        echo -e "${ORANGE}Logged In users :" $CONT && cat /tmp/who_By_0monitor
        
        # Last Reboot
        LSB=$(who -b)
        echo -e "${ORANGE}Last  Reboot :" $CONT $LSB

        # Last Shutdown 
        LSS=$(last -x shutdown | head -1)
        echo -e "${GREEN}Last Shutdown :" $CONT $LSS

        # Up Time System
        UTS=$(uptime -p)
        echo -e "${CYAN}Up Time System :" $CONT $UTS


        # Check The Internet Connection
        ping -c 2 google.com &> /dev/null && echo -e "${GREEN}Internet Status : $CONT Connected " || echo -e "${RED}Internet Status : $CONT Disconnected"


        # Check Internet Speed
        IS=$(./speedtest-cli > /tmp/speedtest_By_0monitor)
        DL=$(cat /tmp/speedtest_By_0monitor | sed -nE '/Download/s/^.*: //p')
        UL=$(cat /tmp/speedtest_By_0monitor | sed -nE '/Upload/s/^.*: //p')
        echo -e "${RED}Download :" $CONT $DL
        echo -e "${PURPLE}Upload :" $CONT $UL

        # grep -v -->  Invert the sense of matching, to select non-matching lines.

        # Check Hostname
        HN=$(cat /proc/sys/kernel/hostname)
        echo -e "${GREEN}Hostname :" $CONT $HN

        # Check Internal IP
        INIP=$(ip route get 1.2.3.4 | awk '{print $7}')
        echo -e "${YELLOW}Internal IP :" $CONT $INIP

        # Check External IP
        EXIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
        echo -e "${CYAN}External IP :" $CONT $EXIP

        # Check DNS
        DNS=$(cat /etc/resolv.conf | grep -i "nameserver")
        echo -e "${PURPLE}Name DNS Servers :" $CONT $DNS 


        # Check Disk
        D=$(df -h | grep 'Filesystem\|/dev/sda*' > /tmp/Disk_By_0monitor)
        echo -e "${YELLOW}Disk Usages :" $CONT && cat /tmp/Disk_By_0monitor

       
        # Check RAM & SWAP
        RS=$(free -h | grep -v + > /tmp/RAM_By_0monitor)
        echo -e "${RED}RAM Usages :" $CONT
        cat /tmp/RAM_By_0monitor | grep -v "Swap"
        echo -e "${BLUE}Swap Usages :" $CONT
        cat /tmp/RAM_By_0monitor | grep -v "Mem"
                                                        
       
        # Check Load Average
        LV=$(top -n 1 -b | grep "load average:" | awk '{print $10 $11 $12}')
        echo -e "${CYAN}Load Average :" $CONT $LV

        # Remove The All TMP Files
        rm /tmp/Disk_By_0monitor /tmp/RAM_By_0monitor /tmp/speedtest_By_0monitor /tmp/who_By_0monitor /tmp/OS_Realease_Name_Version_By_0monitor
}
fi
