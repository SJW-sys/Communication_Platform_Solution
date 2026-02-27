#!/bin/bash

# Ensure Mattermost structure exist
mkdir -p /opt/docker/Communication_Platform_Solution/DeploymentFiles/BindMounts/Mattermost/{config,data,logs,plugins,client/plugins,bleve-indexes}

# ensure Caddy structure exist 
mkdir -p /opt/docker/Communication_Platform_Solution/DeploymentFiles/BindMounts/Caddy/Caddyfile

# ensure Postgres structure exist 
mkdir -p /opt/docker/Communication_Platform_Solution/DeploymentFiles/BindMounts/Postgres

# ensure correct owner for bindmounts
sudo chown "$USER":docker -R /opt/docker/Communication_Platform_Solution/DeploymentFiles/BindMounts/
sudo chown 2000:2000 -R /opt/docker/Communication_Platform_Solution/DeploymentFiles/BindMounts/Mattermost/

# ensure correct permissions of bindmounts
sudo chmod 774 -R /opt/docker/Communication_Platform_Solution/DeploymentFiles/BindMounts/