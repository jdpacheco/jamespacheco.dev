# jamespacheco.dev

Personal portfolio site for [jamespacheco.dev](https://jamespacheco.dev).

## Stack

Static HTML/CSS served by nginx. No frameworks, no dependencies.

## Local Development

Build and run locally with Docker or Podman:

```bash
docker build -t jamespacheco-dev .
docker run -p 8080:80 jamespacheco-dev
```

Then open `http://localhost:8080`.

## Deployment

Pushes to `main` trigger an automatic deployment via GitHub Actions:

1. Builds a `linux/amd64` image
2. Pushes to a self-hosted registry
3. Updates the deployment on k3s with the new image tag
4. Waits for rollout to confirm success

The image is tagged with the git commit SHA for traceability.

## Infrastructure

This site runs on a self-hosted k3s cluster. See
[jamespacheco-dev/homelab](https://github.com/jamespacheco-dev/homelab) for the
infrastructure setup — Traefik ingress, Cloudflare Tunnel, cert-manager,
and the rest of the stack that makes this work.

## Requirements

For local development: Docker or Podman.

For deployment: GitHub Actions secrets and variables configured per the
workflow in `.github/workflows/deploy.yml`.