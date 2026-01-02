#!/bin/bash

if [ ! -f /tmp/data.txt ]; then
  echo "❌ File /tmp/data.txt not found"
  echo "Hint: Use touch or echo"
  exit 1
fi

CONTENT=$(cat /tmp/data.txt)
if [ "$CONTENT" != "hello rankhex" ]; then
  echo "❌ File content incorrect"
  echo "Hint: Content must be 'hello rankhex'"
  exit 1
fi

PERM=$(stat -c "%a" /tmp/data.txt)
if [ "$PERM" != "644" ]; then
  echo "❌ Incorrect file permission"
  echo "Hint: Use chmod 644"
  exit 1
fi

echo "✅ Lab Passed Successfully!"
