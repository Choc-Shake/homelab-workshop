# Audiobookshelf (Audiobook Server)

Easy · http://localhost:13378 · Docs: https://www.audiobookshelf.org/docs

A server for audiobooks and podcasts that remembers where you left off on every device. It can subscribe to podcasts and download new episodes on its own, so you don't need any files to try it out.

## Setting it up

Run everything from this folder.

1. `docker compose up -d` and go to http://localhost:13378, then create the root user.
2. Make a library: type Podcasts, folder `/podcasts`. That's the path inside the container, not on your laptop.
3. In the podcast library, search for a podcast you like, add it and download an episode.
4. Check the `podcasts` folder on your laptop. The MP3 is in there.

## Things to try

- LibriVox (https://librivox.org) has free public domain audiobooks. Put one in `audiobooks` and make an Audiobooks library pointing at `/audiobooks`.
- Turn on auto-download for a podcast so new episodes just show up.

## Good to know

- Audiobooks need to be in folders like `audiobooks/Author/Book Title/` to get picked up properly.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
