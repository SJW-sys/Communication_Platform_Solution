# TITLE
GOAL

## Things to note in a deployment of this tool
- This is a DEMO, please see FAQ section of README
- This repository uses GitLab pipeline files, as its designed around deployments in a self-host GitLab environment.
- Containers that have an editable configuration file via code, require a reboot of the container to pull in the changes.
- Ensure bind mounts on host are set to 600 permissions (rw-------), and have the correct owner/group to align with uid/gid given to container space.
- I DEMO docker swarm secrets, for a simple homelab might be better to just use a .env file

## Prerequisite in a deployment of this exact repository
- GitLab and a runner are Deployed and configured to talk to target Debian 13.3 (trixie) server to deploy the containers.
- Some Variables have been configured within Gitlab to inject into a pipeline at runtime:
    SSH_HOMELABDEMO_PRIVATE_KEY, REMOTE_PORT, PROD_REMOTE_USER , PROD_REMOTE_HOST , TEST_REMOTE_USER , TEST_REMOTE_HOST
- target Debian 13.3 (trixie) server at a minimum has docker and openssh server (w/ .pub key) setup.
- DNS resolver is already configured.
- Updating .env file for your needs.
- using [Caddy](https://github.com/SJW-sys/Caddy-HomelabDemo) or a Reverse Proxy to handle SSL for a clean URL and encryption.
- Please review any prerequisites for additional demos you use.

## Reverse proxy for gluten setups
These VPN containers are tricky to navigate around, the best thing I have found is either using a external reverse proxy, or have Caddy hit the host network card ip address to navigate correctly to a service due to how gluten ensures traffic is routed. Currently for this service the Caddyfile has a commented out section you will need to add back, and fix the IP to your host machine IP. This can be passed but is currently outside the scope of this demo.

## Resources:
- Github: 
- DockerHub: 
- website:
- Documentation:

## FAQ for repository visitors
### Why does the repository have 'Demo' in the title?
this "demo" repository is based on real world local deployments in my Homelab. Some settings may be changed, or different for privacy and safety.Typically in a real world scenario, you would use .gitignore to filter out potential sensitive files, as well has have pipeline jobs to find secrets. Typically you also consider storing variables within the git repository platform itself in a mask state to prevent jr devs from pushing secrets accidentally.

### Why a GitLab pipeline file (.gitlab-ci.yml)?
I selfhost a GitLab instance at home for experimentation, experience and privacy. So I use GitLab runners to deploy my pipelines, this is the native file for that. In the future I will update these demos to reflect GitHub native pipelines workflows (.github/workflows/PIPELINE.yml), or maybe I'll do a Jenkins demo for my own learning.

### Why multiple branches
I have a test and main branch to more demo a enterprise setup, where you might have people pushing changes to a protected ‘test’ branch that is then has pipelines to stage tooling on a test server. Which once pulled into ‘main’, would deploy the same setup to a production server.

### Where can I find more about this project and your thought process?
I make it a habit that my files typically have dozens of in-line comments to better help anyone using them for the first time to understand what is happening, maybe not always why. Also please check out my blog, it typically has more information on my projects (sometimes the post is still being planned).

### Does ths connect to your other Homelab Demo repositories?
Yes! Most of these demos connect to this exact project, for the use of ssl termination.

### Was AI used to generate this?
No, but I have learned and expanded my knowledge of the tools within this project (and prior projects) with AI to design a better solution and skills for other deployments. AI I see as a tool and resource that is loose in the market place regardless of your stance, that you need to follow, know how to use, while educating others on its complexities and putting safeguards around it. I firmly design and deploy with my own brainstorming, knowledge, and troubleshooting as my first approach, but i have used AI to troubleshoot, help expand understanding, research, interpreter (ie. Bash to Go) and experimented with vibe coding. I have deeper thoughts and opinions, but those are better discussed rather than a few sentences in a git repository. 

## Issues to note with this "demo"
I wanted to do a proper code repository that could be poke around so you could see commits and pulls that you might normally see in a team production repository, unfortunately due to the overhead and this [issue](https://github.com/orgs/community/discussions/6292), I will be "cutting corners" and doing everything locally then pushing to main directly from my machine. However, I will still leave the demo "main" and "test" branches with there protections.

## Docker features, CI/CD tooling/skills, and other tools leveraged in this project.
- Docker:
    - image pull
    - compose
    - Networking
    - bind mounts and volumes
    - Permissions (capabilities)
    - environment variables
    - managing tooling multiple configurations files
- Yaml
- Git
- Gitlab interface and secret management
- Pipelines (all in Gitlab formatting)
- Git CD/CI best practices (branches, branch protections, etc)
- Linux (general and permissions)
- Bash
- SSH
- Documentation