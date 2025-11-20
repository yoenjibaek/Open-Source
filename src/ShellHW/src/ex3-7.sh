#!/bin/bash

echo "==================="
echo "1) user info"
echo "2) GPU or CPU usage"
echo "3) memory usage"
echo "4) disk usage"
echo "==================="
read -p "select: " menu

case "$menu" in
  1)
    whoami
    who
    ;;
  2)
    if command -v nvidia-smi >/dev/null 2>&1; then
      nvidia-smi
    else
      top -b -n 1 | head -n 10
    fi
    ;;
  3)
    free -h
    ;;
  4)
    df -h
    ;;
  *)
    echo "invalid menu"
    ;;
esac
