#!/bin/bash
start_time=$(date +%s)

echo "Start time of script execution =$start_time"
sleep 20s 

End_time=$(date +%s)
echo "End time of script excution =$End_time"

Total_time=$(($End_time-$start_time))

echo "Total execution time of script=$Total_time"