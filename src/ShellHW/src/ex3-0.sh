#!/bin/bash
if ! grep -q 'export MYENV="Hello Shell"' ~/.bashrc; then
  echo 'export MYENV="Hello Shell"' >> ~/.bashrc
fi

echo "1) After adding to .bashrc:"
source ~/.bashrc
echo "MYENV = $MYENV"

unset MYENV
echo "2) After unset in this shell:"
echo "MYENV = ${MYENV:-not set}"
