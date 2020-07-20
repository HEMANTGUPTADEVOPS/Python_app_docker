FROM asia.gcr.io/grand-ward-283704/ubuntubaseimage 
WORKDIR /usr/src/app
COPY k8s-helloworld/ /usr/src/app
COPY k8s-helloworld/requirements.txt .
RUN pip install -r requirements.txt
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
COPY webapp.conf /etc/nginx/conf.d/webapp.conf
COPY run.sh .
RUN chmod 0500 run.sh
CMD [ "sh", "run.sh" ]
