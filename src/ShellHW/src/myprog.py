#!/usr/bin/env python3
import sys

print("program start")
print("arguments:")
for i, v in enumerate(sys.argv[1:], start=1):
    print(f"{i}: {v}")
print("program end")
