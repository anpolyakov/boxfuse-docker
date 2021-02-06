FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install git java default-jdk tomcat9 tomcat9-admin maven
CMD ["systemctl enable --now tomcat9"]
CMD ["git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello"]
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
CMD ["boxfuse run target/hello-1.0.war"]
