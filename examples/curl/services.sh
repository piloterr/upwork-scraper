#!/usr/bin/env bash
# Upwork Services API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./services.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/upwork/services" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=mobile-apps
