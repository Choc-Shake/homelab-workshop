# Actual Budget (Budgeting)

Easy · http://localhost:5006 · Docs: https://actualbudget.org/docs/

A budgeting app that uses the envelope method (same idea as YNAB). The server syncs your budget between devices, and you can turn on end-to-end encryption.

## Setting it up

Run everything from this folder.

1. `docker compose up -d` and go to http://localhost:5006
2. Set a server password, then either create a budget or click "View demo" to poke around with fake data.

## Things to try

- Make an actual student budget: rent, groceries, transit, textbooks, going out.
- Turn on end-to-end encryption in the settings and then look at what's saved in `actual-data`.

## Good to know

- It only works over `localhost` or HTTPS. If you want to use it from your phone later, you'll need HTTPS (see [06 Learn more](../../06-learn-more.md)).

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
