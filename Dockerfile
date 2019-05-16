# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine


#Download maven 3.6.0
ENV MAVEN_VERSION 3.6.0
ENV MAVEN_HOME /usr/lib/mvn
ENV PATH $MAVEN_HOME/bin:$PATH

# Add Maintainer Info
LABEL maintainer="carlosperezaraujo@outlook.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

#Create working directory app
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Add the application's jar to the container
COPY [".","/usr/src/app/"]

# Run the jar file
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/usr/src/app/app.jar"]

