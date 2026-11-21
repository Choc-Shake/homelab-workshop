# Excalidraw (Whiteboard)

Easy · http://localhost:3020 · Docs: https://github.com/excalidraw/excalidraw

The whiteboard app where everything looks hand-drawn. Good for sketching out what your home lab network would look like.

## Setting it up

Run everything from this folder.

1. `docker compose up -d` and go to http://localhost:3020

## Things to try

- Draw your ideal home lab: router, Pi-hole, a mini PC, which apps go where.
- Open it in a different browser. Your drawing isn't there, because drawings are saved in the browser, not on the server. What would you need to add to the compose file to change that?

## Good to know

- This image is just the editor. Live collaboration needs a separate collaboration server.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
