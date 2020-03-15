FROM hub.c.163.com/wbmc747/install:latest
MAINTAINER wbmc747
RUN echo "mongod -dbpath=/var/db/mongo -logpath=/var/log/mongodb/mongodb.log --config=/etc/mongodb.conf &;mysqld &;tail -f /var/log/apache2/error.log" > /root/start.sh
CMD ["/bin/bash", "/root/start.sh"]
