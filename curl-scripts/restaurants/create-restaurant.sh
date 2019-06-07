#!/bin/bash

curl "http://localhost:4741/restaurants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "restaurant": {
      "name": "'"${NAME}"'",
      "city": "'"${CITY}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
