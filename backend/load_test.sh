#!/bin/bash

seq 1000 | parallel -j10 "curl --head 'http://localhost:3000/database/169/table/687/3033' \
    -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
    -H 'Accept-Language: en-US,en;q=0.9' \
    -H 'Cache-Control: max-age=0' \
    -H 'Connection: keep-alive' \
    -b 'i18n-language=en; jwt_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODUxMTAzMSwiaWF0IjoxNzQ3OTA2MjMxLCJqdGkiOiJhZmI4YTQyYjA5NGM0YThkOGRhNTkxZGY3NTc4MDAxZiIsInVzZXJfaWQiOjMsInZlcmlmaWVkX2VtYWlsX2NsYWltIjoiZW5mb3JjZWQifQ.O1508QuZqQqmLBJR2DSnTbyZK8y8YwkVkVjENai57uU; user_session=eyJ1c2VyX2lkIjoiMyIsInRva2VuX2hhc2giOiJhYTMwNWNhY2RiNDk4YzFlOTdhODdkOWQyZWQ1NTdiOWYzNDRjNTk4YTg4MzI3NDQxOTE1NWQzZDJjY2U4ZjNmIn0%3A1uI2Fz%3Aa5rY5rCSlFJDj3qOO7yksUDg8gk8yLawnfpfC-13ZXk; baserow_group_id=124; defaultViewId=689%3A3035%2C688%3A3034%2C687%3A3033' \
    -H 'If-None-Match: \"2a74fa-IMzHR4KTbOT3NNUz0xURqZJbniY\"' \
    -H 'Referer: http://localhost:3000/database/169/table/688/3034' \
    -H 'Sec-Fetch-Dest: document' \
    -H 'Sec-Fetch-Mode: navigate' \
    -H 'Sec-Fetch-Site: same-origin' \
    -H 'Sec-Fetch-User: ?1' \
    -H 'Upgrade-Insecure-Requests: 1' \
    -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' \
    -H 'sec-ch-ua: \"Google Chrome\";v=\"137\", \"Chromium\";v=\"137\", \"Not/A)Brand\";v=\"24\"' \
    -H 'sec-ch-ua-mobile: ?0' \
    -H 'sec-ch-ua-platform: \"macOS\"'"
