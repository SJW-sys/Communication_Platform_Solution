#!/bin/bash

# Ensure Mattermost structure exist
mkdir -p /opt/docker/communicationplatformstack/DeploymentFiles/BindMounts/Mattermost/{config,data,logs,plugins,client/plugins,bleve-indexes}

# ensure Caddy structure exist 
mkdir -p /opt/docker/communicationplatformstack/DeploymentFiles/BindMounts/Caddy/Caddyfile

# ensure Postgres structure exist 
mkdir -p /opt/docker/communicationplatformstack/DeploymentFiles/BindMounts/Postgres

# ensure correct owner for bindmounts
sudo chown "$USER":docker -R /opt/docker/communicationplatformstack/DeploymentFiles/BindMounts/
sudo chown 2000:2000 -R /opt/docker/communicationplatformstack/DeploymentFiles/BindMounts/Mattermost/

# ensure correct permissions of bindmounts
sudo chmod 774 -R /opt/docker/communicationplatformstack/DeploymentFiles/BindMounts/