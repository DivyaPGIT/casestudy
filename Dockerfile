FROM centos
RUN yum install -y java
ADD /var/lib/jenkins/workspace/JenkinsPipelinecasestudy/target/my-test-app-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]

