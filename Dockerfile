FROM tomcat:9.0
RUN apt update -y
RUN apt install maven -y
EXPOSE 8080
CMD ["catalina.sh", "run"]
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR ./boxfuse-sample-java-war-hello
RUN mvn package
RUN cp target/hello-1.0.war /usr/share/tomcat9/webapps

