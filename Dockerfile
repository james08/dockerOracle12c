FROM sath89/oracle-12c
ADD initSqls/* /docker-entrypoint-initdb.d/
