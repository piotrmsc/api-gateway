#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

readonly CURRENT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

CODEGEN_PKG=${CODEGEN_PKG:-$(cd ${CURRENT_DIR}/../../; ls -d -1 ${GOPATH}/src/k8s.io/code-generator 2>/dev/null || echo ${GOPATH}/src/k8s.io/code-generator)}
REB_ROOT_PKG="github.com/kyma-incubator/api-gateway/pkg/"

${CURRENT_DIR}/generate-groups.sh all \
  ${REB_ROOT_PKG}/client ${REB_ROOT_PKG}/apis \
  networking:v1alpha3 \
  --go-header-file ${CURRENT_DIR}/boilerplate.go.txt