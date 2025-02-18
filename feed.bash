#!/usr/bin/env bash
set -e -u -o pipefail

curl -fsSO 'https://www.meilisearch.com/_next/data/ry4vh48P82l7vbo3gRpvR/blog.json'
mkdir -p _site
jq -f filter.jq blog.json > _site/feed.json
