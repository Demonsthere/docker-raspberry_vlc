#!/bin/bash
mv rules vlc-*/debian/
mv vlc-nox.install.in vlc-*/debian

cd vlc-*/
/usr/bin/debuild -i -us -uc -b
mv *.deb /output