From ubuntu:18.04
RUN set -ex \
        \
        && apt-get update \
        && apt-get install -y dirmngr gnupg \
        && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7 \
        && apt-get install -y apt-transport-https ca-certificates \
        && sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger bionic main > /etc/apt/sources.list.d/passenger.list' \
        && apt-get update \
        && apt-get install -y python python-pip nginx libnginx-mod-http-passenger \
        && if [ ! -f /etc/nginx/modules-enabled/50-mod-http-passenger.conf ]; then sudo ln -s /usr/share/nginx/modules-available/mod-http-passenger.load /etc/nginx/modules-enabled/50-mod-http-passenger.conf ; fi


