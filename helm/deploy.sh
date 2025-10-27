#!/bin/bash

set -a
source .env
set +a

helm secrets --evaluate-templates -b vals upgrade --install vault-app app -n vault-app -f app/values.yaml