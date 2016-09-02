#!/bin/bash
mkdir -p /etc/opendkim/domainkeys
cd /etc/opendkim/domainkeys
opendkim-genkey -s mail -d $maildomain -b 2048
