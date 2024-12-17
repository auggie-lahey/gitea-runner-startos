FROM gitea/act_runner:latest

ENV APP_HOST giteadev.embassy
ENV APP_PORT 12596
ENV TOR_PROXY_IP embassy
ENV TOR_PROXY_PORT 9050
ENV GITEA_INSTANCE_URL=https://x63zddjmr3gg64sltefxkmvsja2dqcuhkgjii3cjzu74uu4iqsfrxhad.local
ENV GITEA_RUNNER_REGISTRATION_TOKEN=AbwkDreRgq0sKbdxD08QXdMuzGEOpk13OetxCu37

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
# RUN chmod a+x /usr/local/bin/*.sh
# RUN chmod a+x *.sh