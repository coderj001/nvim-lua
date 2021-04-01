FROM ubuntu:latest

RUN yes | unminimize

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  ninja-build gettext libtool libtool-bin autoconf automake cmake g++ \
  pkg-config unzip git python3 python3-dev

RUN git clone --single-branch \
  https://github.com/neovim/neovim ~/neovim \
  && cd ~/neovim \
  && make CMAKE_BUILD_TYPE=Release \
  && make CMAKE_INSTALL_PREFIX=$HOME/local/nvim install

RUN echo 'export PATH=$HOME/local/nvim/bin:$PATH' >> ~/.bashrc
RUN echo 'nvim --version' >> ~/.bashrc

RUN git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

RUN apt-get install -y python3-pip lua5.3 nodejs npm
RUN pip3 install pynvim
RUN npm i -g tree-sitter-cli --unsafe-perm=true --allow-root

RUN mkdir -p ~/.config/nvim

RUN apt-get install -y \
    ripgrep ctags

RUN npm i -g neovim

WORKDIR /root
ENTRYPOINT /bin/bash
