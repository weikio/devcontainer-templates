
# Weik.io Integration Developer (weikio-integration-developer)

The whole Weik.io 2026.2.2 platform in one container, with the Weik.io CLI signed in, for building Camel integrations in your own project

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|


## Using this template

The container runs every part of the Weik.io platform: the message server, the log, metric and trace stores, the backend with the admin UI, the API gateway and an agent called `dev`. The `weikio` CLI inside it is signed in as the platform admin, in project `sandbox` and environment `devtest`.

Give Docker 8 GB of memory (6 GB at least), 4 CPUs and 20 GB of free disk. The platform's images are built for Intel and AMD processors. On a Mac with Apple silicon, Docker runs them emulated, which is slower.

In the container's terminal:

```sh
weikio init hello
weikio run hello
```

`weikio init` writes into your project's folder, so the integration's files stay in your repository. `weikio run` publishes the folder, deploys it to `devtest` and follows its log lines until you press Ctrl-C.

For the admin UI, run `weikio-dev ui-link` and open the one-time link in Chrome, Edge or Firefox to choose the password of `admin@local`. The address is `http://localhost:8580`, so the port must be 8580 on your machine as well. If something else uses 8580, VS Code forwards the next free port without a warning, and its Ports view shows which. Stop what uses 8580 and reopen the container. The `devcontainer` command line forwards no port, so run `node .devcontainer/forward-admin-ui.js` on your machine in the project's folder and leave it running.

`weikio-dev status`, `weikio-dev logs` and `weikio-dev reset` look after the platform inside the container. The installation is kept in a Docker volume, so it survives a restart and a rebuild of the container.

The steps are explained at https://weik.io/docs/start/try-on-your-machine, and https://github.com/weikio/try-weikio is a ready repository with this container in it.


---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/weikio/devcontainer-templates/blob/main/src/weikio-integration-developer/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
