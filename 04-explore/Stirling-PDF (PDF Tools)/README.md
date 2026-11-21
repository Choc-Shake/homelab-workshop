# Stirling-PDF (PDF Tools)

Easy · http://localhost:8082 · Docs: https://docs.stirlingpdf.com

Merge, split, compress, convert, OCR, sign and redact PDFs, all on your own machine. No more uploading lab reports and IDs to random PDF websites.

## Setting it up

Run everything from this folder.

1. `docker compose up -d`, wait a minute for the first start, and go to http://localhost:8082
2. Pick a tool, drop in a PDF, download the result.

## Things to try

- Run OCR on a scanned page so you can search and copy the text.
- Compress a huge lecture slides PDF and compare the sizes.

## Good to know

- It's a big image because it includes LibreOffice and OCR engines, so pull it at home.

## Stopping it

`docker compose down` stops it and keeps your data. `docker compose down -v` also deletes any named volumes. Folders it made next to `compose.yaml` (like `config` or `data`) are its data too, so delete those if you want a fresh start.

[Back to all apps](../README.md)
