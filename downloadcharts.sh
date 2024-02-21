#! /bin/sh
## Variables
CHARTSFOLDER=charts

# Start of script
echo "Adding helm repositories"
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
helm repo add fluent https://fluent.github.io/helm-charts
helm repo add jetstack https://charts.jetstack.io
helm repo update
echo "Downloading latest helm charts"
helm pull fluent/fluent-bit -d $CHARTSFOLDER
helm pull open-telemetry/opentelemetry-collector -d $CHARTSFOLDER
helm pull open-telemetry/opentelemetry-operator -d $CHARTSFOLDER
helm pull jetstack/cert-manager -d $CHARTSFOLDER