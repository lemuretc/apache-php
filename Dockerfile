FROM ubuntu:xenial
MAINTAINER KORE <lemuretc@gmail.com>

RUN apt-get -qq update && apt-get -y -qq dist-upgrade && apt-get -qq install -y locales && locale-gen en_US.UTF-8 && export LANG=en_US.UTF-8 && apt-get -qq install -y vim 

WORKDIR /

#ENTRYPOINT ["entrypoint.sh"]

#ENTRYPOINT ["/usr/bin/env"]
#CMD ["sh"]

ADD run.sh /run.sh
RUN chmod +x /run.sh
USER root
CMD ["/run.sh"]
