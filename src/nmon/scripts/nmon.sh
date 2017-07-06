#!/bin/sh

/usr/bin/nmon -c 300 -s 60 -F ~/nmon/file-$(date +'%Y-%m-%d:%H:%M').nmon
#user
