# Vaultwarden (Password Manager)

Easy · http://localhost:8000 · Docs: https://github.com/dani-garcia/vaultwarden/wiki

A lightweight server that works with the official Bitwarden apps and browser extensions. Same apps, but your encrypted vault is stored on your own server.

## Setting it up

Run everything from this folder.

1. `docker compose up -d` and go to http://localhost:8000
2. Create an account with a fake email and a test password, and add a few fake logins.
3. If you want, install the Bitwarden browser extension, choose Self-hosted on its login screen, enter `http://localhost:8000`, and log in.

## Things to try

- Look in `vw-data`. Your vault is a SQLite file, and everything in it gets encrypted in your browser before it's sent, so the server never sees your actual passwords.
- Read the wiki pages on turning off sign-ups and the admin page. What would you change before letting friends use it?

## Good to know

- Don't put real passwords in this. A real setup needs HTTPS, backups and a VPN for remote access (all in [06 Learn more](../../06-learn-more.md)).
- The web vault only works over `localhost` or HTTPS, not something like `http://192.168.1.20`.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
