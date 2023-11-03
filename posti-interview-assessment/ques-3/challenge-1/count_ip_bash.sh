#!/bin/bash
# run as bash <script_name> <Log file>
# example bash count_ip_bash.sh SampleLogFile.txt

log_file=$1

count_unique_ip ()
{
        get_unique_ip_count=$(cat $1 | awk '{print $1}' | sort | uniq | wc -l)
        echo "$get_unique_ip_count"
}


get_uniqueip_count=$(count_unique_ip $log_file)
echo "Number of unique IP address = $get_uniqueip_count"