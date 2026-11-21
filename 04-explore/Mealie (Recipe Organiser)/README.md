# Mealie (Recipe Organiser)

Easy · http://localhost:9925 · Docs: https://docs.mealie.io

Paste a link to any recipe and Mealie pulls out just the ingredients and steps, no ads and no life story. You can also plan meals for the week and make a shopping list from it.

## Setting it up

Run everything from this folder.

1. `docker compose up -d`, give it 30 seconds, and go to http://localhost:9925
2. Follow the first-run setup to make your account.
3. Create → Import from URL, and paste a recipe link from a big recipe site.

## Things to try

- Plan a week of meals and generate the shopping list.
- This one stores its data in a named volume (`mealie-data`) instead of a folder. Find it with `docker volume ls`. When would you want one over the other?

## Good to know

- Importing works on most big recipe sites. Some smaller blogs don't import cleanly.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
