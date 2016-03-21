FROM gogs/gogs

# Inserir dados do MYSQL no arquivo app.ini
USER root
ADD config/app.ini /data/gogs/conf/app.ini
COPY database_config.sh /bin/
RUN chmod +x /bin/database_config.sh

ENTRYPOINT ["docker/start.sh"]
# CMD ["/bin/database_config.sh", "/bin/s6-svscan", "/app/gogs/docker/s6/"]
CMD /bin/database_config.sh; /bin/s6-svscan /app/gogs/docker/s6/

