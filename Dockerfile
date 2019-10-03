FROM ubuntu:latest

RUN apt-get update && apt-get -y install cron

COPY db-clean-expire-cron /etc/cron.d/db-clean-expire-cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/db-clean-expire-cron

# Apply cron job
RUN crontab /etc/cron.d/db-clean-expire-cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log
