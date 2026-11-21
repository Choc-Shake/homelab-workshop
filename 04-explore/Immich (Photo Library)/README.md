# Immich (Photo Library)

Harder · http://localhost:2283 · Docs: https://docs.immich.app

A self-hosted Google Photos: timeline, albums, sharing, a phone app that backs up your camera roll, plus AI search (type "dog" or "beach") and face grouping. It's one of the most popular self-hosted apps out there.

It's also the heaviest thing in this repo. It's four containers, the images are a few GB, it wants about 6 GB of RAM, and every photo you upload takes up space on your laptop. Best done at home on a laptop with 16 GB of RAM.

## Setting it up

Run everything from this folder.

1. Copy the settings file: `cp example.env .env` (on Windows: `Copy-Item example.env .env`).
2. Open `.env` and change `DB_PASSWORD` to something random. Letters and numbers only.
3. `docker compose up -d`, then run `docker compose ps` every so often until all four containers say `(healthy)`.
4. Go to http://localhost:2283, click Getting Started and make your admin account.
5. Upload 20 or so photos (pets, food, trips work well). Go to Administration → Job Queues to watch it make thumbnails and run the AI on them. The first time, it has to download the AI models, so search and faces take a few minutes to start working.
6. Try searching for things like `dog`, `food` or `snow`, and check Explore → People and the Map.

## Things to try

- Look at how it's built. `compose.yaml` has four services: the server (website and API), machine learning, Postgres (the database) and Redis/Valkey (a job queue). Only the server has a `ports:` line, so the database can't be reached from outside. That's exactly how production apps are set up.
- Your actual photo files are in the `library` folder. The database is in a Docker volume (`docker volume ls`). Backing up Immich means backing up both.
- Stop just the AI with `docker compose stop immich-machine-learning`. Does the rest still work?
- Try the phone app at home on the same Wi-Fi: server URL `http://<your-laptop-IP>:2283`.

## Good to know

- This is the official compose file from Immich v3.4.1 with one change: the database is stored in a Docker volume instead of a folder, so it works on Windows too.
- If Postgres keeps restarting, you probably changed `DB_PASSWORD` after the first start. `docker compose down -v` wipes it so you can start over.
- `docker compose down -v` deletes the database and AI models but not the `library` folder. Delete that yourself to get the space back.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
