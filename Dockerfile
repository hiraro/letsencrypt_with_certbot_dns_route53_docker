FROM certbot/certbot
WORKDIR /opt/certbot

RUN pip install certbot-dns-route53

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/opt/certbot/entrypoint.sh"]
