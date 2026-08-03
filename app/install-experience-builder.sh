#!/usr/bin/env bash
# Unpack experience-builder.zip into node_modules/@craftercms/experience-builder
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZIP="${SCRIPT_DIR}/experience-builder.zip"
DEST="${SCRIPT_DIR}/node_modules/@craftercms"

if [[ ! -f "$ZIP" ]]; then
  echo "error: zip not found: $ZIP" >&2
  exit 1
fi

mkdir -p "$DEST"
rm -rf "${DEST}/experience-builder"
unzip -qo "$ZIP" -d "$DEST"

echo "Installed @craftercms/experience-builder -> ${DEST}/experience-builder"
