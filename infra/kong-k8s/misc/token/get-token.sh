#!/bin/bash
kubectl exec -it testcurl -- sh

curl --location --request POST 'http://keycloak.iam/realms/bets/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=mary' \
--data-urlencode 'password=mary' \
--data-urlencode 'client_secret=v60iE25vDlnJf8IFWZ08pS0JtTkZFXCk' \
--data-urlencode 'scope=openid'
