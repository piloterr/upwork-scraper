#!/usr/bin/env bash
# Upwork Freelancer API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./freelancer.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/upwork/freelancer" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode 'query=~0123456789abcdef01'
