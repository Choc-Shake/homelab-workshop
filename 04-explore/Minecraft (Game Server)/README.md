# Minecraft (Game Server)

Easy · localhost (in Minecraft) · Docs: https://docker-minecraft-server.readthedocs.io

A Minecraft Java Edition server, using the `itzg/minecraft-server` image. It handles downloading the server, picking versions and setting up mods or plugins, all through settings in the compose file.

## Setting it up

Run everything from this folder.

1. `docker compose up -d`, then `docker compose logs -f` until it says Done. The first start takes a minute or two because it's downloading the server.
2. In Minecraft Java Edition: Multiplayer → Direct Connection → `localhost`
3. To run server commands: `docker exec -i minecraft rcon-cli`, then try `time set day` or `op <your-username>`. `exit` to leave.

## Things to try

- Change `TYPE`, `VERSION` or `MODE` in `compose.yaml` and run `docker compose up -d` again. The container gets recreated with the new settings, and your world in `data` is still there.
- Find `server.properties` and the `world` folder inside `data`.
- At home, friends on the same Wi-Fi can join using your laptop's IP. Letting people join from outside your house is a different story; read the remote access part of [06 Learn more](../../06-learn-more.md#remote-access) first.

## Good to know

- Bedrock (console/phone) needs the `itzg/minecraft-bedrock-server` image instead.
- Campus Wi-Fi usually blocks laptops from connecting to each other, so people in the room won't be able to join yours.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
