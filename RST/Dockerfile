# escape=\
FROM ubuntu:18.04

ENV HOME /home/doomguy

RUN apt-get update
RUN apt-get install -y \
     zsh \
     wget \
     git \
     tar \
     curl \
     sudo \
     gnupg2 \
     software-properties-common 

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

WORKDIR /home/doomguy/tmp

RUN apt-get update
RUN apt-get install -y gcc \
     make \
     libsdl2-dev \
     libsdl2-net-dev \
     libsdl2-mixer-dev \
     python-pil \
     automake \
     autoconf \
     libtool \
     git \
     pkg-config \
     xubuntu-desktop \
     xrdp
     
     # This needs to be installed manually
     # xfce4

RUN git clone https://github.com/chocolate-doom/chocolate-doom.git
WORKDIR /home/doomguy/tmp/chocolate-doom

RUN curl http://distro.ibiblio.org/pub/linux/distributions/slitaz/sources/packages/d/doom1.wad -o /home/doomguy/tmp/Doom1.wad

RUN echo xfce4-session > ~/.xsession
RUN service xrdp restart

RUN useradd -ms /bin/zsh doomguy
RUN usermod -aG sudo doomguy
RUN sudo chown -R doomguy /home

ARG pwd
RUN echo doomguy:doomguy | chpasswd

USER doomguy

CMD ["zsh"]