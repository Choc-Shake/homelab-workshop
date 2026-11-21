# 04 Explore

This part is on your own. Pick whatever looks interesting, go into its folder and follow its README. Every folder has a `compose.yaml` that's ready to go.

| App | Difficulty | Address |
|---|---|---|
| [Actual Budget (Budgeting)](Actual%20Budget%20%28Budgeting%29/) | Easy | localhost:5006 |
| [Audiobookshelf (Audiobook Server)](Audiobookshelf%20%28Audiobook%20Server%29/) | Easy | localhost:13378 |
| [Excalidraw (Whiteboard)](Excalidraw%20%28Whiteboard%29/) | Easy | localhost:3020 |
| [Homepage (Dashboard)](Homepage%20%28Dashboard%29/) | Medium | localhost:3000 |
| [Immich (Photo Library)](Immich%20%28Photo%20Library%29/) | Harder | localhost:2283 |
| [IT-Tools (Dev Toolbox)](IT-Tools%20%28Dev%20Toolbox%29/) | Easy | localhost:8081 |
| [Jellyfin (Media Server)](Jellyfin%20%28Media%20Server%29/) | Easy | localhost:8096 |
| [Mealie (Recipe Organiser)](Mealie%20%28Recipe%20Organiser%29/) | Easy | localhost:9925 |
| [Minecraft (Game Server)](Minecraft%20%28Game%20Server%29/) | Easy | localhost (in Minecraft) |
| [n8n (Automation)](n8n%20%28Automation%29/) | Medium | localhost:5678 |
| [Navidrome (Music Streaming)](Navidrome%20%28Music%20Streaming%29/) | Easy | localhost:4533 |
| [Open WebUI (Local AI)](Open%20WebUI%20%28Local%20AI%29/) | Medium | localhost:3010 |
| [Portainer (Docker Manager)](Portainer%20%28Docker%20Manager%29/) | Medium | localhost:9443 |
| [Stirling-PDF (PDF Tools)](Stirling-PDF%20%28PDF%20Tools%29/) | Easy | localhost:8082 |
| [Uptime Kuma (Uptime Monitor)](Uptime%20Kuma%20%28Uptime%20Monitor%29/) | Easy | localhost:3001 |
| [Vaultwarden (Password Manager)](Vaultwarden%20%28Password%20Manager%29/) | Easy | localhost:8000 |

Some that go well together:

- Jellyfin, Navidrome and Audiobookshelf for movies, music and audiobooks
- Homepage, Uptime Kuma and Portainer to keep an eye on everything else you're running
- Pi-hole, Vaultwarden and Stirling-PDF if you care about privacy
- Open WebUI and n8n if you want to build automations that use a local AI

## Running any of them

The folder names have spaces in them, so put quotes around them (or type the first few letters and press Tab):

```bash
cd "04-explore/Mealie (Recipe Organiser)"
docker compose up -d
```

Then open the address from the table. `docker compose down` when you're done.

Small apps like IT-Tools, Excalidraw and Uptime Kuma are fine to download on campus Wi-Fi. Immich, Open WebUI, Stirling-PDF and Jellyfin are big, so pull those at home.

## Stuff you'll probably run into

**"port is already allocated"** means something else is using that port on your laptop. Change the left number in `ports:` (`"8096:8096"` to `"8097:8096"`) and use the new one in your browser. The right number is inside the container and doesn't change.

**localhost inside a container** means the container itself, not your laptop. If one app needs to reach another app on your laptop (Uptime Kuma checking Pi-hole, for example), use `host.docker.internal`. Apps in the same compose file can reach each other by their service name, like Open WebUI does with `http://ollama:11434`.

**Paths inside vs outside.** When an app asks for a folder during setup (Jellyfin, Audiobookshelf), give it the path inside the container, like `/media/movies`. The `volumes:` line is what connects that to a folder on your laptop.

**Laptop getting slow?** `docker stats` shows what's using your RAM. Stop whatever you aren't using.

## Adding an app that isn't here

There are thousands of self-hosted apps. https://awesome-selfhosted.net and https://selfh.st/apps/ are good places to look. Once you find one:

1. Find its official Docker or Compose instructions. They're usually in the README or docs under Installation.
2. Make a new folder and paste the example into a `compose.yaml`.
3. Check the ports (pick a free one for the left side), the volumes (where will its data go?) and any environment variables (passwords, timezone).
4. `docker compose up -d`, and `docker compose logs -f` if it doesn't come up.

If you write a good guide for a new one, open a PR and add it here.
