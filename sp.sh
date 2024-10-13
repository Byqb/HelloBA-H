#! bin/bash

echo "Hello World Thise is $HOSTNAME."

TIME=$(date)
Curent_Time="Getenrat on $TIME , Frome The $USER"

echo "$TIME"
echo "$Curent_Time"

report_Time() {
         echo "System Time : "

        uptime
#top = To See All The System
}

report_Time

#File Count
file_Count=$(ls|wc -l)
echo "Number of Files: $file_Count"

#Disk Usage
Disk=$(df -h)
echo "The Disk Usage:"
echo "$Disk"

#System Info
SystemInfo=$(uname -a)
echo "The System Info : "
echo "$SystemInfo"

#User Info

UserName=$(whoami)
echo "The User is [$UserName]"

#Process List

ProscessList=$(ps aux)
echo "Process List : "
echo "$ProscessList"

#Disk Space Alert
threshold=90
current_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
if [ "$current_usage" -ge "$threshold" ]; then
    echo "Disk space is running low!"
else
    echo "Disk space is okay."
fi

#Creat A Password
Pass=$(tr -dc 'A-Za0-9!?%=' < /dev/urandom | head -c 10)
echo "$Pass"

#Var
echo "Whats your First Name ?"
read  F_N
echo "Whats your Last Name ?"
read L_N

echo "Hello $F_N $L_N"

#Positional arguments
#Ex bash.sh $1=l $2=l
echo Yo $1 $2


#$howUpTime
up="before"
since="function"
echo $up
echo $since
showuptime(){
        local up=$(uptime -p | cut -c4-)
        local since=$(uptime -s)
        cat << E0F
----
This  Machine Has Been Up For ${up}
It Has Been Running Since ${since}
----
E0F
}
showuptime
echo $up
echo $since

#case Statement 
clear
echo "
please select:

1.Display System Info
2.Display  HostName
3.File List "

read -p "Enter a Num [1-3] "

case $REPLY in
        1) echo "System Info : "
        uptime
;;

        2) echo  "HostName $HOSTNAME"
;;

        3) echo "Files List :"
        ls
;;

esac
