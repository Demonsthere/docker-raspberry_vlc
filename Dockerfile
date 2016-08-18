FROM armv7/armhf-ubuntu

MAINTAINER jakub.blaszczyk@sap.com

RUN apt-get update
RUN apt-get install -y devscripts
RUN apt-get build-dep -y vlc
RUN apt-get source -y vlc
RUN mkdir ~/vlc_compilation

ADD files/rules ~/vlc_compilation/vlc-*/debian/
ADD vlc-nox.install.in ~/vlc_compilation/vlc-*/debian/
ADD scripts/compile_vlc.sh ~/vlc_compilation/

ENTRYPOINT ["sh", "~/vlc_compilation/compile_vlc.sh"] 