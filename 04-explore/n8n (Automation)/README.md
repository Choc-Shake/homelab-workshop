# n8n (Automation)

Medium · http://localhost:5678 · Docs: https://docs.n8n.io

Workflow automation that you build by connecting blocks: a trigger (a schedule, a webhook, a new email) leads to actions (call an API, post to Discord, update a spreadsheet), with code blocks when you need them. Basically a self-hosted Zapier, and it's used a lot in companies.

## Setting it up

Run everything from this folder.

1. `docker compose up -d`, go to http://localhost:5678 and make the owner account.
2. Make a new workflow. Add a Schedule Trigger, then an HTTP Request node with the URL `https://api.github.com/repos/pi-hole/pi-hole`, then run it.
3. Click the HTTP node's output. That's live JSON from GitHub. Add an Edit Fields node to keep only `stargazers_count`.

## Things to try

- Send the result to a Discord channel with the Discord node and a webhook.
- Trigger a workflow from your terminal with a Webhook node and `curl`.

## Good to know

- Self-hosting n8n is free for personal and internal use. Check its license if you ever want to build a business on it.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
