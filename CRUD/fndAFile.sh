#!/bin/bash

file_path=$(find ./ -name file.txt -print -quit 2>/dev/null)

if [[ -n "$file_path" ]]; then
  echo "File exists at $file_path"
else
  echo "File does not exist"
fi
