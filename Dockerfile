FROM ubuntu:latest

RUN apt update \
    && apt install -y \
       build-essential \
       git \
       curl \
       zsh \
    && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && usermod --shell /bin/zsh root

CMD [ "zsh" ]
