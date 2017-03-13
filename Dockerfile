FROM jenkinsci/jenkins:2.18

# maven
ENV MAVEN_VERSION 3.3.9
ENV MAVEN_HOME /var/lib/maven/latest

USER root

# install maven
RUN curl -L -o /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz -XGET http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    mkdir -p /var/lib/maven && \
    tar xzf /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz -C /var/lib/maven && \
    ln -s /var/lib/maven/apache-maven-$MAVEN_VERSION $MAVEN_HOME && \
    ln -s $MAVEN_HOME/bin/mvn /usr/bin/mvn
