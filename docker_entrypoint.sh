#!/bin/sh

printf "\n\n ============================...\n\n"
printf "\n\n [i] Starting Gitea RUNNER...\n\n"
printf "\n\n ============================...\n\n"
export GITEA_INSTANCE_URL=http://giteadev.embassy:3000
export GITEA_RUNNER_REGISTRATION_TOKEN=$(yq -r '.runnerreg' /root/data/start9/config.yaml)
echo GITEA_RUNNER_REGISTRATION_TOKEN : $GITEA_RUNNER_REGISTRATION_TOKEN
tini -- run.sh
