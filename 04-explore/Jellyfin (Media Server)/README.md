# Jellyfin (Media Server)

Easy · http://localhost:8096 · Docs: https://jellyfin.org/docs/

Your own Netflix for your own movies, shows and music, with posters, descriptions and resume where you left off. Works in a browser, on phones and on most smart TVs. Free, no account needed.

## Setting it up

Run everything from this folder.

1. Make a movies folder: `mkdir -p media/movies` and put a video in it. If you don't have one, Big Buck Bunny is a free short film from the Blender Foundation: https://peach.blender.org/download/
2. `docker compose up -d` and go to http://localhost:8096
3. Go through the setup. When it asks for a library, pick Movies and use the folder `/media/movies`. That's the path inside the container; the volume line connects it to your `media` folder.
4. Let it scan, then hit play.

## Things to try

- While something's playing, check the Dashboard → Playback. Is it direct playing or transcoding? Transcoding (converting the video on the fly) is about the most CPU heavy thing a home server does. Watch `docker stats` while it happens.
- Add a Music library.
- Try the Jellyfin app on your phone or TV at home: `http://<your-laptop-IP>:8096`

## Good to know

- It figures out what movie it is from the file name, so `Big Buck Bunny (2008).mp4` works better than `bbb_final.mp4`.
- Videos take up a lot of space. Pull this one at home, it's a big image.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
