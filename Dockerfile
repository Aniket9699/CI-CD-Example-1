# Use a base image with Tomcat 9.0 and JDK 11
FROM tomcat:9.0-jdk11

# Remove the existing ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT*

# Copy the WAR file to the webapps directory and rename it to ROOT.war
COPY Website.war /usr/local/tomcat/webapps/ROOT.war
