FROM linuxserver/baseimage

ENV APTLIST="nodejs git"

RUN apt-get update -q && \
apt-get install $APTLIST -qy && \
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

VOLUME /tasks /orig /dest
RUN mkdir -p /tasks/{15min,hourly,daily,weekly,monthly}

#Adding Custom files
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/my_init.d/*.sh
RUN /etc/my_init.d/update.sh

VOLUME /tasks /orig /dest
RUN mkdir -p /tasks/{15min,hourly,daily,weekly,monthly}

CMD ["crond", "-f", "-d", "8"]
