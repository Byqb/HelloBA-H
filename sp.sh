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
