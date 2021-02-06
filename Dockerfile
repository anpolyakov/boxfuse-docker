FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install default-jdk tomcat9 -y
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME
EXPOSE 8080
#WORKDIR /usr/share/tomcat9/bin
CMD ["catalina.sh", "run"]
#RUN ["systemctl start tomcat9"]
#CMD ["git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello"]
#WORKDIR boxfuse-sample-java-war-hello
#RUN mvn package
#CMD ["boxfuse run target/hello-1.0.war"]
