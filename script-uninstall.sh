#!/usr/bin/env bash

export NAMESPACE=test

kubectl delete -f deploy/crds/app.juntao.xyz_appservices_crd.yaml -n ${NAMESPACE}
kubectl delete -f deploy/role.yaml -n ${NAMESPACE}
kubectl delete -f deploy/role_binding.yaml -n ${NAMESPACE}
kubectl delete -f deploy/service_account.yaml -n ${NAMESPACE}
kubectl delete -f deploy/operator.yaml -n ${NAMESPACE}
kubectl delete -f deploy/crds/app.juntao.xyz_v1alpha1_appservice_cr.yaml -n ${NAMESPACE}

# kubectl delete -f deploy/crds/test-nginx-cr.yaml -n ${NAMESPACE}

# kubectl delete namespace ${NAMESPACE}
