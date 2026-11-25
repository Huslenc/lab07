# Bug-01: Invalid payload returns 500 Internal Server Error

- **Severity:** High
- **Evidence:** `evidence/bug-01-curl.txt`

## Description
API endpoint руу буруу бүтэцтэй эсвэл дутуу өгөгдөл илгээхэд `400 Bad Request` буцаахын оронд сервер алдаа зааж `500` статус код буцааж байна.

## Steps to Reproduce
1. `evidence/bug-01-curl.txt` файл дээрх `curl -i` хүсэлтийг илгээнэ.
2. Хариу статус кодыг шалгана.

## Expected Result
`400 Bad Request` болон алдааны тайлбар буцах.

## Actual Result
`500 Internal Server Error` буцаж байна.
