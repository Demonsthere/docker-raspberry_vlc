#!/bin/bash
cd ~/vlc_compilation/vlc-*
debuild -i -us -uc -b
mv *.deb /output