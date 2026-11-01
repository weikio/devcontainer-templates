# Weik.io Dev Container Templates

Dev Container templates for the Weik.io integration platform.

## Templates

- `weikio-integration-developer` adds a container to your own project that runs the whole Weik.io platform, with the `weikio` CLI signed in. Use it to build Camel integrations in your repository. To try Weik.io without a project, use https://github.com/weikio/try-weikio, which holds the same container.

In Visual Studio Code, run **Dev Containers: Add Dev Container Configuration Files** and pick the template. From the command line:

```sh
devcontainer templates apply --template-id ghcr.io/weikio/devcontainer-templates/weikio-integration-developer
```

## Repository

Each template is a folder under `src`. The [release workflow](.github/workflows/release.yaml) publishes the templates to GitHub Packages and writes each template's `README.md` from its `devcontainer-template.json` and `NOTES.md`. The [test workflow](.github/workflows/test-pr.yaml) starts a template that a pull request changes and runs its checks in `test`.

## License

Licensed under the Apache License 2.0. See `LICENSE` and `NOTICE`. The workflow and test scripts under `.github` and `test/test-utils` come from the Dev Container template starter and stay under the MIT License in `LICENSE-MIT`.
