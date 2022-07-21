#!/bin/bash
helm repo add fluent https://fluent.github.io/helm-charts
helm install fluentd fluent/fluentd --namespace=logs -f fluentd-values.yaml
