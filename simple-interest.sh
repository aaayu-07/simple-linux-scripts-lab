#!/bin/sh
# simple-interest.sh - calculate simple interest
# Usage: ./simple-interest.sh principal rate(%) time(years)
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal rate(%) time(years)"
  exit 1
fi

P=$1
R=$2
T=$3

SI=$(awk "BEGIN { printf \"%.2f\", ($P * $R * $T) / 100 }")
echo "Simple Interest: $SI"
