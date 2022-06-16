#!/bin/bash
kubectl testkube install
kubectl testkube create test --file /home/claudioed/development/full-cycle/kong-automation/load/create_bet_load.js --type k6/script --name create-bet-load
kubectl testkube run test create-bet-load -f
