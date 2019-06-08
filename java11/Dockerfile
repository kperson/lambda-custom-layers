FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y software-properties-common zip && \
    add-apt-repository ppa:linuxuprising/java && \
    apt-get update && \
    echo oracle-java11-installer shared/accepted-oracle-license-v1-2 select true | debconf-set-selections && \
    apt-get install -y oracle-java11-installer && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk11-installer
ENV JAVA_HOME /usr/lib/jvm/java-11-oracle

ADD  modules.txt  modules.txt
RUN jlink \
    --module-path jmods \
    --add-modules $(tr -d '\n\r' < modules.txt) \
    --include-locales=* \
    --compress 2 --no-header-files --no-man-pages --strip-debug \
    --output java-dist && \
    zip -r java-dist.zip java-dist && \
    rm -rf java-dist
