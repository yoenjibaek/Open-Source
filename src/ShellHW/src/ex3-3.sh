#!/bin/bash
read -p "Enter scores (space separated): " scores

sum=0
count=0

for s in $scores
do
  if [ "$s" -ge 90 ]; then
    grade=A
  else
    grade=B
  fi
  echo "score $s → grade $grade"

  sum=$((sum + s))
  count=$((count + 1))
done

avg=$((sum / count))

if [ "$avg" -ge 90 ]; then avg_grade=A
else avg_grade=B
fi

echo "average score = $avg"
echo "average grade = $avg_grade"
