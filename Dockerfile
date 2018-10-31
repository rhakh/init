FROM debian:8.1

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get clean \
  apt-get install git -y && \
  apt-get install openssh-server openssh-client -y
  
ENV HOME /root
WORKDIR /root
CMD ["bash"]

# docker-machine create --driver virtualbox Char
# eval $(docker-machine env Char)
# docker build -t debian .

# run
# docker run --rm -it debian /bin/bash
