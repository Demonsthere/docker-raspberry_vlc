#!/bin/bash
cd vlc-*/
debuild -i -us -uc -b
mv *.deb /output