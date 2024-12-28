FROM gitea/act_runner:nightly

ARG PLATFORM
ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
ADD ./config.yaml /usr/local/config.yaml
ENV CONFIG_FILE=/usr/local/config.yaml
RUN apk add --no-cache tini nodejs curl
RUN curl -sLo /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_${PLATFORM}
RUN chmod +x /usr/local/bin/yq
