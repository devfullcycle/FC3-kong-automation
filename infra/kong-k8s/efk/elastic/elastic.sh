#!/bin/bash
kubectl create namespace logs
helm repo add elastic https://helm.elastic.co
helm install elasticsearch elastic/elasticsearch \
  --version=7.17.1 \
  --namespace=logs \
  -f elastic-values.yaml
