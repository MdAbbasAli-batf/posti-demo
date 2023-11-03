FROM ubuntu:20.04

COPY  webapp-monitor.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/webapp-monitor.sh
RUN apt -y update
RUN apt -y install curl

ENTRYPOINT ["webapp-monitor.sh"]