#!/usr/bin/env bash
# Upwork Jobs API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./jobs.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/upwork/jobs" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=api-development
