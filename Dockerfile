FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install default-jdk tomcat9 -y
EXPOSE 8080
CMD ["catalina.sh", "run"]
#RUN ["systemctl start tomcat9"]
#CMD ["git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello"]
#WORKDIR boxfuse-sample-java-war-hello
#RUN mvn package
#CMD ["boxfuse run target/hello-1.0.war"]
