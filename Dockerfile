# Run Rainbowstream in a container
#
FROM node:6
LABEL maintainer "Jeremy Seago <seagoj@gmail.com>"
ARG GID=1000
ARG UID=1000

# RUN cat /etc/passwd
# RUN groupadd -r joplin -g $GID && useradd --no-log-init -r --create-home -g joplin -u $UID joplin
RUN export PATH=$PATH:$HOME/.local/bin
USER node
WORKDIR /home/node
RUN NPM_CONFIG_PREFIX=~/.local npm install -g joplin

ENTRYPOINT [ "joplin" ]
