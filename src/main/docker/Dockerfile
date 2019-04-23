FROM java:8

VOLUME /temp

#ADD *.jar app.jar
ADD JXC-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 80
RUN bash -c 'touch / app.jar'
#ENTRYPOINT ["java","-jar","/app.jar"]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","-Xmx1024m","-Xms1024m","/swapping.jar"]
# Ubuntu 时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime