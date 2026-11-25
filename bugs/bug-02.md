# Bug-02: Non-existent ID returns unhandled error response

- **Severity:** Medium
- **Evidence:** `evidence/bug-02-curl.txt`

## Description
Байхгүй ID-аар өгөгдөл шинэчлэх эсвэл устгах хүсэлт илгээхэд тодорхой алдааны мессежгүй хоосон эсвэл стандарт бус хариу буцааж байна.

## Steps to Reproduce
1. `evidence/bug-02-curl.txt` файл дээрх `curl -i` хүсэлтийг илгээнэ.
2. Хариу статус код болон body-г шалгана.

## Expected Result
`404 Not Found` статус код болон ойлгомжтой алдааны мессеж буцах.

## Actual Result
Стандарт бус алдааны хариу буцаж байна.
