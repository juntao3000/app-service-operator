#!/usr/bin/env bash

export IMAGE=juntao2000/app-service-operator:$(date "+%Y%m%d-%H%M%S")
echo $IMAGE

echo "operator-sdk build ..."
operator-sdk build $IMAGE

echo "docker push ..."
docker push $IMAGE

rm -f deploy/operator.yaml
cp deploy/operator.yaml.tpl deploy/operator.yaml
sed -i "s|REPLACE_IMAGE|$IMAGE|g" deploy/operator.yaml
