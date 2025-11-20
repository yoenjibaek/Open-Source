#!/bin/bash

DB_FILE="DB.txt"

add_member() {
  read -p "name: " name
  read -p "birthday (YYYY-MM-DD): " birth
  read -p "phone: " phone
  echo "INFO|$name|$birth|$phone" >> "$DB_FILE"
}

add_record() {
  read -p "date (YYYY-MM-DD): " date
  read -p "name: " name
  read -p "work: " work
  echo "NOTE|$date|$name|$work" >> "$DB_FILE"
}

search_member() {
  read -p "name to search: " name
  grep "INFO|$name|" "$DB_FILE"
  grep "NOTE|" "$DB_FILE" | grep "|$name|"
}

search_by_date() {
  read -p "date: " date
  grep "NOTE|$date|" "$DB_FILE"
}

while true
do
  echo "==================="
  echo "1) add member"
  echo "2) add meeting record"
  echo "3) search by name"
  echo "4) search by date"
  echo "5) exit"
  echo "==================="
  read -p "select: " menu

  case "$menu" in
    1) add_member ;;
    2) add_record ;;
    3) search_member ;;
    4) search_by_date ;;
    5) break ;;
    *) echo "invalid" ;;
  esac
done
