FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install openssh-server -y

RUN mkdir /var/run/sshd

RUN apt-get install default-jre -y

RUN apt-get install default-jdk -y

RUN /usr/sbin/sshd

CMD /bin/bash
