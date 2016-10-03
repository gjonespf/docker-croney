FROM gavinjonespf/docker-croney-test:latest

COPY customcrontab /etc/cron.d/customcrontab

COPY scripts/*.sh /app/scripts/
RUN chmod -R +x /app/scripts/*.sh
