# Use an appropriate base image. In this example, we're using Tomcat to deploy a Java WAR file
FROM tomcat:8.0.20-jre8

# Install curl
RUN apt-get update && apt-get install -y curl

# Set environment variables if needed
ENV NEXUS_URL="http://172.31.87.166:8807/repository/tesla-releases/*.war"

# Download the WAR file from Nexus and place it in the Tomcat webapps directory
RUN curl -o /usr/local/tomcat/webapps/my-app.war $NEXUS_URL

# Other configurations, if needed
