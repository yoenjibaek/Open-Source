#!/bin/bash
read -p "Enter x values (space separated): " line

for x in $line
do
  y=$(echo "scale=4; 0.5 * $x * $x" | bc -l)
  echo "x = $x, y = $y"
done
