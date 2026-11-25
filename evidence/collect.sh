#!/bin/sh
# Тус бүрийн өмнө node app.js-ийг ШИНЭЭР асаа (анхны 3 ном).
# Хэрэглээ: sh evidence/collect.sh 1|2|3
cd "$(dirname "$0")/.."
case "$1" in
  1) curl -i -s localhost:3000/api/stats | tee evidence/bug-01-curl.txt ;;
  2) curl -i -s -X POST localhost:3000/api/books -d 'буруу оролт' | tee evidence/bug-02-curl.txt ;;
  3) curl -i -s -X POST localhost:3000/api/books -H 'Content-Type: application/json' \
       -d '{"title":"","author":"","year":"abc"}' | tee evidence/bug-03-curl.txt ;;
  *) echo "хэрэглэх: sh evidence/collect.sh 1|2|3" ;;
esac
