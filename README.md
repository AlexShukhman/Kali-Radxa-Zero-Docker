# Kali-Radxa-Zero-Docker
Quick Dockerfile to make a Kali Linux image for the Radxa Zero

_WARNING_: This is hacky, but it'll work. Build with

```sh
docker buildx create --use --name insecure-builder --buildkitd-flags '--allow-insecure-entitlement security.insecure'
docker buildx build --allow security.insecure -t rx0kali .
```
