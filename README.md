# Build Your Own Cloud

A Level Up!! workshop from the Computer Engineering Club at the University of Alberta.

This is an intro to servers and home labs, using Docker.

We'll cover what a server actually is, do a quick Docker crash course, and then set up **Pi-hole** together (a DNS server that blocks ads). After that you can try any of the other apps in this repo on your own.

## Before you come

Do [00-before-you-come.md](00-before-you-come.md). It's an install plus some downloads, and campus Wi-Fi won't handle everyone downloading at once, so please do it at home.

## The workshop

| | |
|---|---|
| [00 Before you come](00-before-you-come.md) | Install Docker and download what we need |
| [01 What is a server?](01-what-is-a-server.md) | Servers, clients, ports, DNS, home labs |
| [02 Docker crash course](02-docker-crash-course.md) | Images, containers, volumes, Compose, and how companies use it |
| [03 Guided setup: Pi-hole](03-guided-setup/) | The one we do together |
| [04 Explore](04-explore/) | 16 more apps you can set up on your own |
| [05 Resources](05-resources.md) | Docs, communities and channels worth following |
| [06 Learn more](06-learn-more.md) | What it takes to run a real home lab |

There's also a [cheatsheet](CHEATSHEET.md) with every Docker command we use.

## What's in here

```
00-before-you-come.md
01-what-is-a-server.md
02-docker-crash-course.md
crash-course/          files for the crash course exercises
03-guided-setup/       Pi-hole guide + compose.yaml
04-explore/            one folder per app, each with a guide and a compose.yaml
05-resources.md
06-learn-more.md
CHEATSHEET.md
scripts/               pre-download scripts for Mac/Linux and Windows
```

## Ports

Every app here uses a different port, so you can run a bunch at the same time.

| App | Address |
|---|---|
| Crash course site | http://localhost:8088 |
| IT-Tools | http://localhost:8081 |
| Pi-hole | http://localhost:8080/admin |
| Immich | http://localhost:2283 |
| Homepage | http://localhost:3000 |
| Uptime Kuma | http://localhost:3001 |
| Open WebUI | http://localhost:3010 |
| Excalidraw | http://localhost:3020 |
| Navidrome | http://localhost:4533 |
| Actual Budget | http://localhost:5006 |
| n8n | http://localhost:5678 |
| Vaultwarden | http://localhost:8000 |
| Stirling-PDF | http://localhost:8082 |
| Jellyfin | http://localhost:8096 |
| Portainer | https://localhost:9443 |
| Mealie | http://localhost:9925 |
| Audiobookshelf | http://localhost:13378 |
| Minecraft | `localhost` in the game |

## When you're done

Containers keep running in the background and use RAM. Stop them with `docker compose down` in each folder you started something in, or just quit Docker Desktop. Your data stays on disk either way.

## Help

During the workshop, put your hand up. After, ask in #workshop-help with your OS, the command you ran, and a screenshot of the error.

If something in a guide is wrong or out of date, open an issue or a PR.
