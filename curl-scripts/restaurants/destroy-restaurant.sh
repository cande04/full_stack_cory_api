#!/bin/bash

curl "http://localhost:4741/restaurants/${ID}" \
  --include \
  --header "Authorization: Token token=${TOKEN}" \
  --request DELETE

echo
