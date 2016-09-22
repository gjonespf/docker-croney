#TODO: Rebase on alpine + pip...
FROM gavinjonespf/docker-toolbox:tools-python-pip

RUN pip install https://bitbucket.org/dbenamy/devcron/get/tip.tar.gz

WORKDIR /app
COPY files/crontab /etc/cron.d/crontab
COPY ./scripts scripts
RUN chmod +x /app/scripts/*.sh
RUN touch /var/log/cron.log

VOLUME ["/app/scripts","/etc/cron.d/"]

#CMD ["tail", "-f", "/var/log/cron.log"]
CMD ["/app/scripts/start.sh", "", ""]
