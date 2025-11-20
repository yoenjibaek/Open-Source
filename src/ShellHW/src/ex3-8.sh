#!/bin/bash

if [ ! -d DB ]; then
  mkdir DB
fi

for i in 1 2 3 4 5
do
  touch "DB/file${i}.txt"
done

tar czf DB.tar.gz DB

mkdir -p train

for i in 1 2 3 4 5
do
  ln -sf "../DB/file${i}.txt" "train/file${i}.txt"
done

echo "DB + tar + train links done."
