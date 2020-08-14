#!/usr/bin/env bash

set -e
set -exuo pipefail

#set up the debug environment and variables
source ./debug-environment.sh

consoleHost=$CONSOLE_HOST_NAME
consoleApiPort=$CONSOLE_API_PORT
debuggerApiPort=$CONSOLE_DEBUGGER_API_PORT
consoleClusterUrl=$CONSOLE_CLUSTER_URL
consoleAlertManagerUrl=$CONSOLE_ALERTMANAGER_URL
consoleThanosUrlk=$CONSOLE_THANOS_URL


dlv debug \
./cmd/bridge/main.go \
--output=./bin/bridge \
--api-version=2 \
--listen=${consoleHost}:${debuggerApiPort} \
--headless \
--accept-multiclient \
--log \
--wd=. \
--build-flags=" -gcflags='all=-N -l'" \
-- \
--base-address=http://${consoleHost}:${consoleApiPort} \
--ca-file=examples/ca.crt \
--k8s-auth=openshift \
--k8s-mode=off-cluster \
--k8s-mode-off-cluster-endpoint="$(oc whoami --show-server)" \
--k8s-mode-off-cluster-skip-verify-tls=true \
--listen=http://${consoleHost}:${consoleApiPort} \
--public-dir=./frontend/public/dist \
--user-auth=openshift \
--user-auth-oidc-client-id=console-oauth-client \
--user-auth-oidc-client-secret-file=examples/console-client-secret \
--user-auth-oidc-ca-file=examples/ca.crt \
--k8s-mode-off-cluster-alertmanager="$(oc -n openshift-config-managed get configmap monitoring-shared-config -o jsonpath='{.data.alertmanagerPublicURL}')" \
--k8s-mode-off-cluster-thanos="$(oc -n openshift-config-managed get configmap monitoring-shared-config -o jsonpath='{.data.thanosPublicURL}')"


# --listen=127.0.0.1:2345 \
