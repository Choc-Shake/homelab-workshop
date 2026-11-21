# Docker cheatsheet

Every command from the workshop in one place.

## Compose (what you'll use most)

Run these inside the folder that has the `compose.yaml`.

| Command | What it does |
|---|---|
| `docker compose up -d` | Create and start everything in the file, in the background |
| `docker compose ps` | What's running from this file, and is it healthy? |
| `docker compose logs -f` | Follow the logs of all services (Ctrl+C to stop following) |
| `docker compose logs -f <service>` | Logs of one service |
| `docker compose down` | Stop and remove the containers (data in volumes stays) |
| `docker compose down -v` | Same, and also deletes named volumes (that data is gone) |
| `docker compose restart` | Restart everything |
| `docker compose stop <service>` / `start <service>` | Stop or start one service |
| `docker compose pull` | Download newer images |
| `docker compose up -d` (again) | Apply changes you made to `compose.yaml` |
| `docker compose exec <service> sh` | Open a shell inside a running service |
| `docker compose config` | Show the final file with `.env` variables filled in, and catch typos |

## Plain Docker

| Command | What it does |
|---|---|
| `docker run -d --name NAME -p HOST:CONTAINER IMAGE` | Start a container in the background with a port mapped |
| `docker run --rm IMAGE` | Run, then delete the container when it exits |
| `-v HOST_PATH:CONTAINER_PATH` | Mount a folder (add `:ro` for read-only) |
| `-e KEY=value` | Set an environment variable |
| `docker ps` / `docker ps -a` | Running containers / all containers |
| `docker logs -f NAME` | Follow a container's logs |
| `docker exec -it NAME sh` | Shell inside a container (`bash` if available) |
| `docker stop NAME` / `docker start NAME` | Stop / start |
| `docker rm -f NAME` | Force-remove a container |
| `docker stats` | Live CPU and memory per container |
| `docker images` | Downloaded images |
| `docker volume ls` | Named volumes |
| `docker system df` | How much disk Docker is using |
| `docker system prune` | Delete stopped containers, unused networks and dangling images |

## Reading a `compose.yaml`

```yaml
services:
  app:                          # service name (other containers can reach it by this name)
    image: user/app:1.2.3       # what to run (pin a version for anything important)
    container_name: app         # optional fixed container name
    ports:
      - "8080:80"               # LAPTOP_PORT:CONTAINER_PORT
    volumes:
      - ./data:/data            # LAPTOP_FOLDER:CONTAINER_FOLDER (bind mount)
      - dbdata:/var/lib/db      # NAMED_VOLUME:CONTAINER_FOLDER
    environment:
      TZ: "America/Edmonton"    # settings for the app
    env_file: .env              # or load settings from a file
    depends_on: [db]            # start db first
    restart: unless-stopped     # come back after crashes and reboots

volumes:
  dbdata:                       # declare named volumes here
```

## Special addresses

| Address | Means |
|---|---|
| `localhost` / `127.0.0.1` | This computer. Inside a container, it means the container. |
| `host.docker.internal` | From inside a container: the computer running Docker |
| `http://<service-name>:<port>` | From one container to another in the same compose file |

## When something breaks

1. `docker compose ps` to see if it's running, healthy or restarting.
2. `docker compose logs <service>` and read the last error. Searching the exact error message usually finds the answer.
3. Port conflict? Change the left number in `ports:`.
4. Changed `.env` or `compose.yaml`? Run `docker compose up -d` again.
5. Still stuck? `docker compose down` and `up -d`. Last resort: `down -v` and start fresh (deletes data).
