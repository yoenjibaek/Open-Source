#!/bin/bash
a=$1
b=$2

echo "$a + $b = $((a + b))"
echo "$a - $b = $((a - b))"
echo "$a * $b = $((a * b))"

if [ "$b" -ne 0 ]; then
  echo "$a / $b = $((a / b))"
  echo "$a % $b = $((a % b))"
else
  echo "division by zero not allowed"
fi
