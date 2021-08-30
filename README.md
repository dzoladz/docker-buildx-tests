Docker Buildx - Tests
=====================

[![Github Action](https://github.com/jdrouet/docker-on-ci/workflows/build/badge.svg)](https://github.com/dzoladz/docker-buildx-tests/actions)

This repository uses [Docker Buildx](https://github.com/docker/buildx) and applies Continuous Integration (CI) - via GitHub Actions and Secrets - to build a multi-architecture Docker image; then, publish it to Docker Hub.

## Github Actions

1. https://github.com/actions/checkout
2. https://github.com/docker/setup-qemu-action
3. https://github.com/docker/setup-buildx-action

## Docker Hub Token and Github Secrets

Obtain an access token on [Docker Hub](https://hub.docker.com/settings/security) in the security settings. If you rely on the free-tier of Docker Hub, your only option will be to create a token with Read, Write, Delete access permissions.

Once you have copied the Docker Hub token, you’ll need to create two secrets in your repository in the Secrets section of Settings. Create a `DOCKER_HUB_USERNAME` and `DOCKER_HUB_ACCESS_TOKEN` secret to store the values for login to your Docker Hub account.