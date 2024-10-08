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
