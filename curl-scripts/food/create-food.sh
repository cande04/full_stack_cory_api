#!/bin/bash

curl "http://localhost:4741/foods" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "food": {
      "name": "'"${NAME}"'",
      "notes": "'"${NOTES}"'",
      "restaurant_id": "'"${RESTAURANT_ID}"'"
    }
  }'

echo
