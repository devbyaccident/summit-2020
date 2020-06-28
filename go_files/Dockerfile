FROM golang:latest

ENV GOROOT /usr/local/go
ENV PATH $GOROOT/bin:$PATH
ENV HOME /home/blackdentech

RUN ln -s /usr/local/go/bin/go /usr/bin/go

RUN apt-get update
RUN apt-get install -y zsh \
     wget \
     git \
     curl \
     sudo \
     vim 

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

RUN useradd -ms /bin/zsh blackdentech
RUN usermod -aG sudo blackdentech
RUN sudo chown -R blackdentech /home

RUN echo blackdentech:password | chpasswd

USER blackdentech