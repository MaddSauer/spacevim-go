FROM spacevim/spacevim
MAINTAINER Madd Sauer

RUN curl https://dl.google.com/go/go1.14.1.linux-amd64.tar.gz | tar xz -C /usr/local \
  && echo 'export PATH="/usr/local/go/bin:$PATH"' >> /etc/profile \
  && mkdir /home/spacevim/trans
