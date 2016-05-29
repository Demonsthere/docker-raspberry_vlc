FROM armv7/armhf-ubuntu

MAINTAINER jakub.blaszczyk@sap.com

RUN apt-get update
RUN apt-get install -y devscripts
RUN apt-get build-dep -y vlc
RUN apt-get source -y vlc

ADD files/rules vlc-*/debian/
ADD vlc-nox.install.in vlc-*/debian/
ADD scripts/compile_vlc.sh /

ENTRYPOINT ["sh", "compile_vlc.sh"] 