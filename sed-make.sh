#!/bin/bash

# Usage: ./sed-make <module> <oldversion> <newversion>
# E.g., "./sed-make block_class 1.3 2.3"

if [[ $1 == *"stanford"* ]]; then
  find . -name "*.make" -exec sed -i '' 's/'$1'\]\[download\]\[tag\] \= \"'$2'\"/'$1'\]\[download\]\[tag\] \= \"'$3'\"/g' "{}" \;
fi

find . -name "*.make" -exec sed -i '' 's/'$1'\]\[version\] \= \"'$2'\"/'$1'\]\[version\] \= \"'$3'\"/g' "{}" \;

