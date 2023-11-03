#!/bin/bash
log_file="/tmp/alert.txt"
exec >> $log_file 2>&1

webapp_url="http://${WEBAPP_HOST}"
count=0
webapp_health ()
    {
        timestamp=$(date +'%Y-%m-%d %T')
        http_res_code=$(curl --write-out %{http_code} --silent --output /dev/null $1)
        if [ $http_res_code -eq 200 ] ; then

            echo "$timestamp webapp service up, response code=$http_res_code"
            let count=0

        else

            http_res=$(curl --show-error --silent --output /dev/null $1 2>&1)
            let count=count+1
            if [ $count -ge 2 ]; then
               echo "$timestamp webapp service ERROR, response=$http_res"
            fi
        fi
    }

while true; do
webapp_health $webapp_url
sleep 1m
done