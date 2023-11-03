# using bash its very easy, just one line command
# cat SampleLogFile.txt | awk '{print $1}'| sort | uniq | wc -l
# run as python3 count_ipaddress.py <Log file>
# example python3 count_ipaddress.py SampleLogFile.txt
import sys

if len(sys.argv) > 1:
    input_file = sys.argv[1]
else:
    input_file = "E:\professional study\Python\scripts\posti\SampleLogFile.txt"


def count_unique_ip(log_file):
    with open(log_file, "r") as file1:
        lines = file1.readlines()
    ip_list = []
    for line in lines:
        ip_list.append(line.split()[0])
    unique_ip = set(ip_list)
    return len(unique_ip)


print(count_unique_ip(input_file))



