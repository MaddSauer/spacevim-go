FROM spacevim/spacevim
MAINTAINER Madd Sauer

USER root

RUN curl https://dl.google.com/go/go1.14.1.linux-amd64.tar.gz | tar xz -C /usr/local \
  && echo 'export PATH="/usr/local/go/bin:$PATH"' >> /etc/profile \
  && mkdir /home/spacevim/trans

USER spacevim

ENV HOME /home/spacevim
ENV PATH "/usr/local/go/bin:$HOME/.local/bin:${PATH}"
WORKDIR $HOME

ENTRYPOINT /usr/local/bin/nvim
