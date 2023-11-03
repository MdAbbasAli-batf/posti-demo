run below command:

# docker compose up -d --no-deps --build

To check monitoring log run:
# tail -f /tmp/alert.txt

To acchess webpage browse
http://<local_host_ip>:8011

if firewalld blocks, allow:
sudo firewall-cmd --add-port=8011/tcp --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --list-all
