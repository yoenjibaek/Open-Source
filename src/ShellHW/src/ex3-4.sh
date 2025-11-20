#!/bin/bash

scores=()

add_score() {
  read -p "New score: " s
  scores+=("$s")
}

show_scores() {
  echo "All scores:"
  for s in "${scores[@]}"; do
    echo "$s"
  done
}

avg_score() {
  sum=0
  for s in "${scores[@]}"; do
    sum=$((sum + s))
  done
  avg=$((sum / ${#scores[@]}))
  echo "average score = $avg"
}

avg_gpa() {
  sum=0
  for s in "${scores[@]}"; do
    sum=$((sum + s))
  done
  avg=$((sum / ${#scores[@]}))

  if   [ "$avg" -ge 90 ]; then gpa=4.0
  elif [ "$avg" -ge 80 ]; then gpa=3.0
  elif [ "$avg" -ge 70 ]; then gpa=2.0
  elif [ "$avg" -ge 60 ]; then gpa=1.0
  else gpa=0.0
  fi

  echo "average score = $avg"
  echo "GPA = $gpa"
}

while true
do
  echo "==================="
  echo "1) add score"
  echo "2) show all scores"
  echo "3) show average score"
  echo "4) convert to GPA"
  echo "5) exit"
  echo "==================="
  read -p "select: " menu

  case "$menu" in
    1) add_score ;;
    2) show_scores ;;
    3) avg_score ;;
    4) avg_gpa ;;
    5) break ;;
    *) echo "invalid menu" ;;
  esac
done
