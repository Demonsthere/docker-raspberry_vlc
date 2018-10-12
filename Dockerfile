FROM arm32v7/ubuntu:xenial

MAINTAINER jakub.blaszczyk@sap.com

WORKDIR /workspace
VOLUME /output

RUN apt-get update &&\
	apt-get install -y devscripts &&\
	apt-get build-dep -y vlc &&\
	apt-get source -y vlc

ADD scripts/compile_vlc.sh /workspace
ADD files/rules /workspace/
ADD files/vlc-nox.install.in /workspace/

RUN chmod +x /workspace/compile_vlc.sh &&\
	/workspace/compile_vlc.sh
