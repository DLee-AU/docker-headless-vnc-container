#!/usr/bin/env bash
set -e

echo "Retrieve Citrix ICA client"
#DOWNLOAD_URL=$(wget -4 -O - https://www.citrix.com/downloads/citrix-receiver/linux/receiver-for-linux-latest.html | grep '<a' | grep 'ICAClient-rhel-' | grep 'x86_64.rpm' | sed -e 's,.*rel=",https:,' -e 's,".*,,g' | head -n1); \
DOWNLOAD_URL=$(wget -4 -O - https://www.citrix.com/downloads/citrix-receiver/linux/receiver-for-linux-latest.html | grep '<a' | grep 'ICAClientWeb-rhel-' | grep 'x86_64.rpm' | sed -e 's,.*rel=",https:,' -e 's,".*,,g' | head -n1); \
wget "$DOWNLOAD_URL" -O icaclient.rpm

