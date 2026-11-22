# 00 Before you come

Please do this at least a day before. If you show up without it, you'll probably spend the workshop waiting on downloads.

## Your laptop

You need at least 8 GB of RAM and about 10 GB of free space. Windows 10/11, macOS 13 or newer, or Linux all work.

If it's a school or work-managed laptop, it might not let you install Docker. Try anyway, and if it fails, let one of us know and we'll pair you up with someone.

## 1. Install Docker

**Windows**

1. Download Docker Desktop from https://www.docker.com/products/docker-desktop/
2. Run the installer and leave "Use WSL 2" checked.
3. Restart if it asks you to.
4. Open Docker Desktop and accept the terms. You don't need to sign in.

If it says virtualization is disabled, you'll need to turn on Intel VT-x or AMD-V/SVM in your BIOS. Searching "[your laptop model] enable virtualization" will get you the exact steps.

**Mac**

Download Docker Desktop from the same link. Pick Apple Silicon if you have an M-series Mac, or Intel if it's older (Apple menu → About This Mac will tell you). Drag it into Applications, open it, accept the terms, skip the sign-in.

**Linux**

Install Docker Engine for your distro from https://docs.docker.com/engine/install/ (on Arch it's `sudo pacman -S docker docker-compose` then `sudo systemctl enable --now docker`). Then add yourself to the docker group so you don't need sudo every time:

```bash
sudo usermod -aG docker $USER
```

Log out and back in after that. Docker Desktop for Linux also works if you'd rather have the GUI.

Docker Desktop is free for personal and education use.

## 2. Get the files

If you have Git:

```bash
git clone <this-repo-url> homelab-workshop
```

If not, click **Code → Download ZIP** on the GitHub page and unzip it somewhere easy to find, like your Desktop.

## 3. Download the images

Make sure Docker is running, then paste these into a terminal one at a time. Each `docker pull` downloads an image from Docker Hub, the same way you'd download an app from an app store.

```bash
docker pull hello-world
docker pull corentinth/it-tools
docker pull nginx:alpine
docker pull pihole/pihole:latest
docker pull louislam/uptime-kuma:2
```

You'll notice we don't give you a script that does this for you. Running scripts from the internet without reading them first is a bad habit, even from people you trust. Every command in this workshop is short enough to read before you run it, so please do.

If there are apps in [04 Explore](04-explore/) you already know you want to try, pull those too while you're on home internet: go into the app's folder and run `docker compose pull`. Have a look at its `compose.yaml` first so you know what you're downloading.

## 4. Make sure it works

```bash
docker run --rm hello-world
docker compose version
```

The first one should print "Hello from Docker!" and the second should print a version number. If both work, you're set.

## If something goes wrong

| Problem | Fix |
|---|---|
| `docker: command not found` or "cannot connect to the Docker daemon" | Docker isn't running. Open Docker Desktop and wait until it says Engine running. |
| `permission denied ... docker.sock` (Linux) | Run the `usermod` command above, then log out and back in. |
| "WSL 2 installation is incomplete" (Windows) | Open PowerShell as admin, run `wsl --install`, restart. |
| "Virtualization not enabled" | Turn on VT-x / AMD-V in your BIOS. |

Still stuck? Post in #workshop-help with your OS, the command, and a screenshot.

## Bring

Your laptop and your charger. Docker uses a lot of battery.
