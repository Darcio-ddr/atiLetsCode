FROM atf.intranet.bb.com.br:5001/bb/lnx/lnx-jre-alpine:11.0.3
COPY target/lib/* /opt/lib/
COPY target/*-runner.jar /opt/app.jar
ENTRYPOINT ["java", "-Duser.country=BR", "-Duser.language=pt", "-jar", "/opt/app.jar"]
