#!/bin/sh
oinkmaster -o /usr/local/etc/suricata/rules/
echo "" > /usr/local/etc/sid-block.map
for file in `ls /usr/local/etc/suricata/rules/*.rules`
    do sed -n "\%^[^\#].*sid:\(.[0-9]*[0-9]\).*% s//\1":" "src," "1day"/p" $file >> /usr/local/etc/sid-block.map
    done
sid_list='2010935 2010936 2010937 2010939 2403316 2008578 2011716 2002910 2002911 2101411 2012296 2001219 2023510 2023511 2023512'
for sid in $sid_list
    do
    sed -i '' "/$sid/s/1day/14days/" /usr/local/etc/sid-block.map
done

#重启服务生效
service suricata restart
service barnyard2 restart