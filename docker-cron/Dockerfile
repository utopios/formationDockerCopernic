FROM ubuntu

RUN apt-get update && apt-get install -y cron

COPY special-crontab /etc/cron.d/special-crontab

RUN touch /var/log/test.log

RUN chmod 777 /etc/cron.d/special-crontab

RUN crontab /etc/cron.d/special-crontab

CMD [ "/etc/init.d/cron", "start" ]