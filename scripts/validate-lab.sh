#!/bin/bash
set -e

echo "🔍 Detecting lab context..."

DIR="$PWD"

while [ "$DIR" != "/" ]; do
  if [ -f "$DIR/.lab/lab.yaml" ]; then
    echo "🧪 Running validation for lab:"
    echo "📂 $DIR"
    echo "----------------------------------"
    bash "$DIR/.lab/verify.sh"
    exit 0
  fi
  DIR="$(dirname "$DIR")"
done

echo "❌ You are not inside a lab directory"
echo "➡️  cd into a lab folder (e.g. file-system/file-handling) and try again"
exit 1
