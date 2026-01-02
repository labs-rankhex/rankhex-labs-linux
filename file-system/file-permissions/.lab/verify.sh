#!/bin/bash

FILE="/tmp/secure.txt"

if [ ! -f "$FILE" ]; then
  echo "❌ File secure.txt not found in /tmp"
  echo "Hint: Use touch to create the file"
  exit 1
fi

PERM=$(stat -c "%a" "$FILE")
if [ "$PERM" != "600" ]; then
  echo "❌ Incorrect permissions"
  echo "Expected: 600 | Found: $PERM"
  echo "Hint: chmod 600 /tmp/secure.txt"
  exit 1
fi

OWNER=$(stat -c "%U" "$FILE")
CURRENT=$(whoami)

if [ "$OWNER" != "$CURRENT" ]; then
  echo "❌ File ownership mismatch"
  echo "Hint: File should be owned by your user"
  exit 1
fi

echo "✅ Lab Passed: File Permissions are correct!"
