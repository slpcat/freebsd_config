#!/bin/sh
wget http://rules.emergingthreats.net/fwrules/emerging-PF-ALL.rules -O /etc/pf.et_blacklist
service pf reload
