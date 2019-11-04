#!/usr/bin/env bash
set -e

echo "Install Citrix ICA client"
yum -y localinstall icaclient.rpm;
#yum -y localinstall icaclient.rpm
yum clean all

ALL_CERTS='/etc/pki/ca-trust/extracted/pem/*.pem /etc/pki/tls/*.pem /usr/share/pki/ca-trust-source/ca-bundle.trust.crt'
CITRIX=/opt/Citrix/ICAClient/keystore/cacerts
 
for x in ${ALL_CERTS}; do
     ln -sf "${x}" "${CITRIX}"
done
