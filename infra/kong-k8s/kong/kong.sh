#!/bin/bash
kubectl create ns kong
helm install kong/kong --generate-name -f kong-conf.yaml --set proxy.type=NodePort,proxy.http.nodePort=30000,proxy.tls.nodePort=30003 --set ingressController.installCRDs=false --namespace kong
