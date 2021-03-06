FROM maven as main

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY . .
RUN mvn clean install

FROM openjdk:11-jre-slim-buster

ENV APP_HOMEJDK /app
RUN mkdir -p $APP_HOMEJDK
ARG JAR_FILE=$APP_HOMEJDK/target/*.jar
COPY --from=main ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]

# docker build -t apibta .
# docker run --name btarestservice -d -p 8080:8080 apibta
