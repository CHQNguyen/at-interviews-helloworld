#!/bin/bash
set -eo pipefail

helm upgrade --install --namespace $(whoami) --create-namespace helloworld --set image.tag=$COMMIT_ID helm/helloworld
