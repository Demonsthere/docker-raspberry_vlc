FROM armv7/armhf-ubuntu

MAINTAINER jakub.blaszczyk@sap.com

RUN apt-get update
RUN apt-get install -y devscripts

WORKDIR /workspace
RUN apt-get build-dep -y vlc
RUN apt-get source -y vlc

ADD files/rules workspace/vlc-\*/debian/
ADD files/vlc-nox.install.in workspace/vlc-\*/debian/

ADD scripts/compile_vlc.sh /

ENTRYPOINT ["sh", "compile_vlc.sh"] 