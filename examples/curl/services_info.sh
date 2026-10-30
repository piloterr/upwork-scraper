#!/usr/bin/env bash
# Upwork Services Info API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./services_info.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/upwork/services/info" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://www.upwork.com/services/product/development-it-mobile-app-developer-android-ios-flutter-application-hybrid-apps-1403673770703212544
