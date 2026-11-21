# Uptime Kuma (Uptime Monitor)

Easy · http://localhost:3001 · Docs: https://github.com/louislam/uptime-kuma/wiki

A monitoring dashboard that checks your websites and services every minute and can ping you on Discord, email or Telegram when something goes down. Pretty much every home lab has one.

## Setting it up

Run everything from this folder.

1. `docker compose up -d` and go to http://localhost:3001
2. Pick SQLite for the database and make an admin account.
3. Add New Monitor → HTTP(s) → `https://www.ualberta.ca` → Save.
4. Now monitor something running on your laptop, like Pi-hole. Use `http://host.docker.internal:8080/admin`, not localhost.
5. Stop Pi-hole and watch the monitor go red.

## Things to try

- Make a status page, like the ones big companies have.
- Add a Discord webhook under Settings → Notifications so you get a message when something goes down.
- Try an HTTP(s) - Keyword monitor, which only counts a page as up if a certain word is on it. Why is that better than just checking that it loads?

## Good to know

- Inside a container, `localhost` means the container itself, not your laptop. `host.docker.internal` is how a container reaches the computer Docker is running on. This one catches everyone at least once.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
