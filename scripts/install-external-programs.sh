#!/bin/bash

for f in programs/*.sh; do
  # Get the base name of the file
  base_name=$(basename "$f")

  # Check if $1 is 'container' and base_name is in the specified list
  if [[ "$1" == "container" ]]; then
    case "$base_name" in
      "docker.sh"|"webstorm.sh")
        echo "Skipping $f as mode is minimal"
        continue
        ;;
    esac
  fi

  # Execute the script with -H argument
  bash "$f" -H
done
