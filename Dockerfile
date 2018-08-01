FROM jenkins/jenkins:lts
ENV DOCKERVERSION=18.03.1-ce
ENV DOCKER_HOST=127.0.0.1:2375
USER root
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKERVERSION.tgz \
          && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 -C /usr/local/bin docker/docker \
          && rm docker-${DOCKERVERSION}.tgz \
          && echo alias docker='docker -H=${DOCKER_HOST}' >> /etc/profile.d/00-aliases.sh
