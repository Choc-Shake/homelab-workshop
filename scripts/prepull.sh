#!/usr/bin/env bash
# Downloads every Docker image used in the workshop, so you don't need campus Wi-Fi for it.
# Run from the repo folder:  ./scripts/prepull.sh
set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"

if ! docker info >/dev/null 2>&1; then
  echo "Docker isn't running. Open Docker Desktop (or start the docker service) and try again."
  exit 1
fi

docker pull hello-world
docker compose -f "$REPO/crash-course/compose.yaml" pull
docker compose -f "$REPO/03-guided-setup/compose.yaml" pull
docker pull louislam/uptime-kuma:2

echo
echo "Done. Run 'docker images' to see what downloaded."
