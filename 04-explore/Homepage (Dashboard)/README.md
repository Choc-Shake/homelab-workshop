# Homepage (Dashboard)

Medium · http://localhost:3000 · Docs: https://gethomepage.dev

A start page that links to all your apps, shows whether they're up, and can pull live numbers from a lot of them (like how many queries Pi-hole blocked). It's all set up with YAML files, which makes it good practice.

## Setting it up

Run everything from this folder.

1. `docker compose up -d` and go to http://localhost:3000. There's already a starter setup in `config/services.yaml` with the workshop apps in it.
2. Open `config/services.yaml`. Each app has an `href` (the link your browser opens, so it uses `localhost`) and a `siteMonitor` (what the container checks to show the up/down dot, so it uses `host.docker.internal`).
3. Remove apps you aren't running, add ones you are, save, and refresh. No restart needed.
4. Change the title and theme in `config/settings.yaml`.

## Things to try

- Add a widget that shows live info from one of your apps, like Pi-hole's blocked count. The options for each app are at https://gethomepage.dev/widgets/
- Put your course sites in `config/bookmarks.yaml` and make it your browser's home page.

## Good to know

- YAML cares about indentation. Spaces only, no tabs. If the page shows an error it usually tells you which line.
- Giving a container `docker.sock` lets it control Docker, which is basically admin access to your computer. That's why it's commented out. Only do it for apps you trust, and keep the `:ro`.
- By default Homepage only works at `localhost:3000`. If you change the port or open it from another device, you'll need to set `HOMEPAGE_ALLOWED_HOSTS` (it's in the docs).

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
