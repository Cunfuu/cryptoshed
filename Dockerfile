FROM alpine:3.8

RUN apk add jq
RUN apk add curl
RUN apk add bash
COPY cronscript.sh /cronscript.sh
COPY whattup.sh /whattup.sh
RUN command chmod +x  '/cronscript.sh'
RUN command chmod +x  '/whattup.sh'
RUN sh /cronscript.sh
RUN echo '* * * * *   /whattup.sh' > /var/spool/cron/crontabs/root

CMD [ "crond", "-l", "2", "-f"]