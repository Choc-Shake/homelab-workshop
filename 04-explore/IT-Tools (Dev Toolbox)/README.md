# IT-Tools (Dev Toolbox)

Easy · http://localhost:8081 · Docs: https://github.com/CorentinTh/it-tools

Around 80 small developer tools in one page: JSON formatting, base64, hashes, UUIDs, JWT decoding, subnet calculator, QR codes, cron explainer and more. It all runs in your browser, so nothing you paste gets sent anywhere. You already ran it in the crash course.

## Setting it up

Run everything from this folder.

1. If the crash course one is still running, remove it first: `docker rm -f it-tools`
2. `docker compose up -d` and go to http://localhost:8081

## Things to try

- Use the IPv4 subnet calculator to figure out what `192.168.1.0/24` means.
- Paste `0 3 * * 0` into the crontab tool. That's a common schedule for backups.
- There's a tool that turns a `docker run` command into a compose file. Handy when an app's docs only give you `docker run`.

## Good to know

- No volume, because it doesn't store anything. That's what people mean by a stateless container.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
