# Open WebUI (Local AI)

Medium · http://localhost:3010 · Docs: https://docs.openwebui.com

Run open AI models like Llama, Qwen or Gemma on your own laptop, with a ChatGPT-style interface. Ollama runs the model and Open WebUI is the chat app on top. Nothing you type leaves your computer.

## Setting it up

Run everything from this folder.

1. Do this one at home. The image is big and each model is 1 to 5 GB.
2. `docker compose up -d`
3. Download a small model that runs fine on a laptop CPU: `docker exec -it ollama ollama pull llama3.2:1b`
4. Go to http://localhost:3010, make an account (the first one becomes admin), pick the model at the top and start chatting.

## Things to try

- Try a few sizes like `qwen2.5:0.5b`, `llama3.2:1b` and `llama3.2:3b`, and watch `docker stats` while it answers.
- Turn your Wi-Fi off and keep chatting.
- Look at `OLLAMA_BASE_URL: http://ollama:11434`. Open WebUI reaches Ollama using its service name, and Ollama has no `ports:` at all, so nothing outside can talk to it directly.

## Good to know

- In Docker Desktop this runs on the CPU only. Docker can't use a Mac's GPU, and NVIDIA GPUs need extra setup. On a Mac it's a lot faster to install Ollama normally and only run Open WebUI in Docker.
- Models are stored in the `ollama` volume. `docker compose down -v` deletes them if you want the space back.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
