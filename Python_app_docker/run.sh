#/bin/bash
sed -i s/hostname/$(hostname)/g /etc/nginx/conf.d/webapp.conf
sed -i s/hostIP/$(hostname -i)/g /etc/nginx/conf.d/webapp.conf
/etc/init.d/nginx start
tail -100f /var/log/nginx/access.log
