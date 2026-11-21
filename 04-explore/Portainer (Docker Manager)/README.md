# Portainer (Docker Manager)

Medium · https://localhost:9443 · Docs: https://docs.portainer.io

A web interface for Docker: containers, images, volumes, logs and compose stacks from your browser. On a server with no screen and no Docker Desktop, this is how a lot of people manage everything.

## Setting it up

Run everything from this folder.

1. `docker compose up -d` and go to https://localhost:9443
2. Your browser will warn you about the certificate. That's normal for a self-signed certificate on localhost, so go to Advanced and continue.
3. Make the admin account within 5 minutes of starting it (it's a security timeout). If you miss it, run `docker compose restart`.
4. Pick Get Started to manage your local Docker. Every container you've run today is in there.

## Things to try

- Open a container's logs and console from the browser.
- Go to Stacks → Add stack and paste in one of the compose files from this repo. Same as `docker compose up -d`, but from a web page.

## Good to know

- It needs `/var/run/docker.sock`, and anything with the Docker socket can do pretty much anything to the computer. That's fine on your laptop, but on a real server use a strong password and never put Portainer on the internet.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
