FROM tomcat:9.0.38-jdk11-adoptopenjdk-hotspot

RUN groupadd openam \
 && mkdir /data \
 && useradd -g openam -d /data -M openam \
 && chown openam:openam /usr/local/tomcat/webapps /data

RUN mkdir /usr/local/tomcat/webapps/ROOT
COPY index.jsp /usr/local/tomcat/webapps/ROOT
COPY AM-7.0.0.war /usr/local/tomcat/webapps/openam.war

COPY openam.data.tar /var/tmp
COPY docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
CMD "/usr/local/bin/docker-entrypoint.sh"

USER openam
