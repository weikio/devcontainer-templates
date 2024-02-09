# Weik.io Dev Container Templates

> This repo provides Dev Container templates to help with the usage of Weik.io Integration Platform.

## Repo and Template Structure

This repository contains a single template: integrationdev

Integrationdev template is a good starting point for integration architects and integration developers who want to quicly start creating integrations on top of the Weik.io platform. The template installs the required services (Weik.io Backend, UI and the Agent + NATS) and the required CLI tools.

### Updating Documentation

This repo contains a GitHub Action [workflow](.github/workflows/release.yaml) that will automatically generate documentation (ie. `README.md`) for each Template. This file will be auto-generated from the `devcontainer-template.json` and `NOTES.md`.