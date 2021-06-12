FROM python:3.7

RUN apt-get update && apt-get -y install cron vim

WORKDIR /app

# setup cron job
COPY crontab /etc/cron.d/crontab
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab

# setup for python app
COPY . /app
RUN pip3 install -r /app/src/requirements.txt

# run
CMD ["cron", "-f"]
