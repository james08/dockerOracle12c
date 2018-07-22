FROM sath89/oracle-12c

ENV WEB_CONSOLE true
ENV DBCA_TOTAL_MEMORY 2048
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/u01/app/oracle/product/12.1.0/xe/bin
ENV USE_UTF8_IF_CHARSET_EMPTY true

ADD create.sql /create.sql
ADD entrypoint.sh /entrypoint.sh
COPY create.sql /docker-entrypoint-initdb.d/create.sql

RUN apt-get update && apt-get -y install curl && apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

EXPOSE 1521
# EXPOSE 8080
VOLUME ["/docker-entrypoint-initdb.d"]

# RUN '/u01/app/oracle/product/12.1.0/xe/bin/sqlplus system/oracle@127.0.0.1:1521/xe @create.sql'

# RUN ls /usr/local/bin

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
