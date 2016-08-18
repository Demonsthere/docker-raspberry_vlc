FROM armv7/armhf-ubuntu

MAINTAINER jakub.blaszczyk@sap.com

RUN apt-get update
RUN apt-get install -y devscripts

WORKDIR /workspace
RUN apt-get build-dep -y vlc
RUN apt-get source -y vlc

ADD scripts/compile_vlc.sh /workspace
ADD files/rules /workspace/
ADD files/vlc-nox.install.in /workspace/

RUN chmod +x /workspace/compile_vlc.sh
RUN /workspace/compile_vlc.sh
