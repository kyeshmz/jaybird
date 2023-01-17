#!/bin/bash
set -e
if [ -z "$1" ]
then
  perl -i -pe 's/^(version:\s+\d+\.\d+\.)(\d+)(\+)(\d+)$/$1.($2+1).$3.($4+1)/e' ../../pubspec.yaml
  #perl -i -pe 's/^(version:\s+\d+\.\d+\.\d+\+)(\d+)$/$1.($2+1)/e' pubspec.yaml
else
  sed -i '' "s/^version.*/version: $1/g" ../../pubspec.yaml
fi
