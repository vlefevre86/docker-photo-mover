FROM alpine:3.3

RUN apk add --update --no-cache nodejs git

#Adding Custom files
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/my_init.d/*.sh

VOLUME /tasks /orig /dest
RUN mkdir -p tasks/{15min,hourly,daily,weekly,monthly}

CMD ["crond", "-f", "-d", "8"]
