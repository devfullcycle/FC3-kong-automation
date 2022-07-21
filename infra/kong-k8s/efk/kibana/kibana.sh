#!/bin/bash
helm install kibana elastic/kibana \
  --version=7.17.1 \
  --namespace=logs \
  --set service.type=NodePort \
  --set service.nodePort=31000
