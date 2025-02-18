#!/usr/bin/env bash
set -e -u -o pipefail

curl -fsSO 'https://www.meilisearch.com/_next/data/SA-Pq9MJOjQRoBjND5Mjj/blog.json'
mkdir -p _site
jq -f filter.jq blog.json > _site/feed.json
