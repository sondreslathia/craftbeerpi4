#!/usr/bin/env bash
set -euo pipefail

IMAGE="sondreslathia/craftbeerpi"
VERSION="1.0.0"

docker buildx build \
    --platform linux/amd64,linux/arm64 \
    -t "${IMAGE}:${VERSION}" \
    -t "${IMAGE}:latest" \
    --push .