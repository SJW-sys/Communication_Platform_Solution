# Communication Platform Solution
Modern, remote team communication platform allowing for total control, privacy and self defined QoS.

## Looking for Something new
I am on a team that requires a remote central communication platform in order to complete work. The platform needs to offer modern functionality and support multiple client types (desktop, mobile, linux, etc) with a focus on a robust messaging system, while also supporting a full team VoIP call of ~10 users. Due to the direction of our current platform, we are reviewing alternatives, ideally a drop in replacement. At this time we are open to the idea of self-hosting, if we can find the right fit.

### Key requirements
- Messaging, with the ability for a central group chat, with additional smaller chats between multiple members.
- Modern Messaging; Ability to share hyperlinks, pictures and videos via chat. Reactions, gifs.
- Mobile and Desktop support.
- Video capability, or integration.
- Well Supported, ideally with a long standing track record in the industry space

### Mattermost:
Mattermost is a well known and trusted communication platform with years of experience in business environments, used by companies such as the US airforce, NASA, Samsung, etc. It promotes itself as a Secure, Resilient, Adaptable tool that will keep your team focused on what the platform core is, communication. It is designed for teams with stringent security & privacy requirements ( GDPR, FINRA,AICPA SOC, barr certification iso 27001), many of these considered top tier regulatory standards. It offers many modern communication functionality, that would be a great candidate for a drop in replacement for our team.

#### Benefits/Features&Functions:
- self host deployment
- Docker deployment
- industry tool with years of vetted experience and reliability on market
- Community and Developer documentation and support
- many integrations + automations/bots
- storefront in tool to add official/community integrations and or bots/automatons, Mattermost Marketplace
- familiar modern platform interface mincing to current team platforms
- Groups, channels, threads, DMs, Pinned messages
- gifs, reactions; allowing custom uploads and outside online platforms (ie giphy) to pull in.
- notification controls (mute channels)
- Open-Source tooling
- Free edition (mattermost-team-edition)
- Trusted by government and other large industries
- Well upkept
- webapp and clients
- mobile and desktop platform
- Built in Authentication server with MFA solutions
- RBAC and ACL controls, to shape user access and scope across the service.
- Bonus: Workflows and task list, and other functions popular in more professionally focused team communication platforms
- dark mode

### Alternative solutions
There are many alternatives, but trying to focus on the most promising. Loosely order in value-fit at a limited review at this point in time.
- Stay on current platform, and find a way to make it work
- Slack: https://slack.com/
- Matrix (with element): https://matrix.org/
- Stoat: https://stoat.chat/
- Roomy: https://github.com/muni-town/roomy
- Root: https://www.rootapp.com/

## Deployment Plan
- Docker deployment on VPS
- Self-host VPS in cloud for more ideal segregated environment from team members. This would allow for more resiliency, user errors, allow joint-team management of Inf, and provide best Quality of Service to team during VoIP calls given geo-location.
- Cloud would also allow easy scaling to more robust server if needed, or additional server for additional self host services team might need (ie. Documentation storage solution).
- Mattermost with a Jitsi Meet plugin via the service, allowing both to run at the same time on a single server to reduce IT overhead.
- Use CloudFlair as DNS provider, using some of CF built-in FireWall rules (GEO blocking, robot.txt, etc) and reverse proxy for security and privacy.
- Use Caddy as server-side Reverse proxy and Cert Management (ACME w/ lets encrypt) tool.
- (Optional) Setup many to one wireguard split tunnel VPN into VPS, allowing to ensure DNS and reverse traffic provider and others cannot intercept traffic and increase security. Could consider moving reverse proxy as a front end server, that users hit, then it VPN into mattermost, would loose benefit of user vpn connections.

### Risk
- Cloud Hosted opens concerns for more privacy concerns, not only in hosting platform, but the whole traffic flow.
- Cloud Hosted opens concerns for IT skill management requirements of Inf.
- Cloud Hosted opens concerns for more security concerns, as patching is required manual intervention on all levels (host, services, dependencies(docker), etc).
- Self Hosting requires Infrastructure management, which could result in downtime and maintenance windows and slower functionality roll outs.
- Cost (Domain, Server)
- Data loss, without a regimented backup plan.

### Host Requirements:
mattermost: https://docs.mattermost.com/deployment-guide/software-hardware-requirements.html
Jitsi Meet: https://jitsi.github.io/handbook/docs/devops-guide/devops-guide-requirements/

#### Default Deployment Specs:
Below should support 10-20 users with jisti meet and mattermost, but requires real world testing.

- CPU: 2
- RAM: 4gb (should try 2gb first, but jisti meet might struggle with more than 5 in-call users)
- GPU: na
- HDD: 50gb (Ideally encrypted, also will need to determine a long term data solution)
- Network: 1gb, 1TB monthly data transfer minimum (might not hit the minimum, but 500gb would most likely be pushed over)

### Hosting Options:
- AWS lightsail (~$25 monthly): https://aws.amazon.com/marketplace/pp/prodview-y3zlyk43nuei6
- akamai (~$24 monthly): https://cloud-calculator.akamai.com/s/
- digital ocean (~$24 monthly): https://www.digitalocean.com/pricing/droplets
- racknerd (~$25 monthly for 4cpu and 4ram): https://www.racknerd.com/kvm-vps
- Azure
- GCP

### Setup Process


## Resources:
### Mattermost:
Github (docker deployment):https://github.com/mattermost/docker
Github: https://github.com/mattermost/mattermost
DockerHub (mattermost-team-edition): https://hub.docker.com/r/mattermost/mattermost-team-edition
Website: https://mattermost.com/
Community: https://forum.mattermost.com/
### Jitsi Meet:
Github: https://github.com/jitsi/jitsi-meet
DockerHub: https://hub.docker.com/r/jitsi/web
Website: https://jitsi.org/jitsi-meet/
Community: https://community.jitsi.org/
Demo: https://meet.jit.si/
