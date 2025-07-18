#!/bin/bash

for f in programs/*.sh; do
  # Execute the script with -H argument
  bash "$f" -H
done