#!/usr/bin/env bash

export NAMESPACE=test

kubectl create namespace ${NAMESPACE}
kubectl apply -f deploy/crds/app.juntao.xyz_appservices_crd.yaml -n ${NAMESPACE}
kubectl apply -f deploy/role.yaml -n ${NAMESPACE}
kubectl apply -f deploy/role_binding.yaml -n ${NAMESPACE}
kubectl apply -f deploy/service_account.yaml -n ${NAMESPACE}
kubectl apply -f deploy/operator.yaml -n ${NAMESPACE}
kubectl apply -f deploy/crds/app.juntao.xyz_v1alpha1_appservice_cr.yaml -n ${NAMESPACE}

# kubectl apply -f deploy/crds/test-nginx-cr.yaml -n ${NAMESPACE}
