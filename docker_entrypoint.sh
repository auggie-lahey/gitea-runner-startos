#!/bin/sh

printf "\n\n [i] Starting Gitea RUNNER...\n\n"
chmod a+x /usr/local/bin/*.sh
chmod a+x *.sh
echo token: $GITEA_RUNNER_REGISTRATION_TOKEN