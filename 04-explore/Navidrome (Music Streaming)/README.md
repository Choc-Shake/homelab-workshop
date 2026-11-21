# Navidrome (Music Streaming)

Easy · http://localhost:4533 · Docs: https://www.navidrome.org/docs/

A music server for your own MP3 or FLAC collection. It has a web player and playlists, and works with a lot of phone apps through the Subsonic API.

## Setting it up

Run everything from this folder.

1. `mkdir music` and copy some music in (one folder per artist or album works best). The Free Music Archive has legal free music: https://freemusicarchive.org
2. `docker compose up -d` and go to http://localhost:4533
3. Make your admin account. Your music shows up after the first scan.

## Things to try

- Connect a Subsonic app on your phone (Substreamer, Symfonium, play:Sub) at home.
- Change `ND_SCANSCHEDULE` to something more reasonable like `1h`. Environment variables are how you configure most containers.

## Good to know

- It goes by the tags in your music files. Untagged files end up under Unknown Artist. MusicBrainz Picard can fix tags.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
