FROM r-base:3.3.1
MAINTAINER Philip Graf <mail@philipgraf.de>

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    libmysqlclient-dev \
    cron \
    nano \
  && rm -rf /var/lib/apt/lists/*

RUN echo "export TERM=xterm" >> /root/.bashrc
RUN echo "export EDITOR=nano" >> /root/.bashrc

CMD ["cron", "-f"]
