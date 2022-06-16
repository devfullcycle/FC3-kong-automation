#!/bin/bash
kubectl testkube create test --file ../create_bet_load.js --type k6/script --name create-bet-load
kubectl testkube run test create-bet-load -f
