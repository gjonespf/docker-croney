#TODO: Rebase on alpine + pip...
FROM gavinjonespf/docker-toolbox:tools-python-pip

RUN pip install https://bitbucket.org/dbenamy/devcron/get/tip.tar.gz

WORKDIR /app
COPY files/crontab /etc/cron.d/crontab
RUN touch /var/log/cron.log
COPY ./scripts scripts
WORKDIR /app/scripts
RUN chmod -R +x *.sh


VOLUME ["/app/scripts","/etc/cron.d/"]

#CMD ["tail", "-f", "/var/log/cron.log"]
CMD ["/app/scripts/start.sh", "", ""]
