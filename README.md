# Helm-Charts

This repository contains [Helm](https://helm.sh) charts for various projects

- [Distributed Loki](https://github.com/whyeasy/helm-charts/tree/master/charts/distributed-loki)
- [Prometheus MongoDb Exporter](https://github.com/whyeasy/helm-charts/tree/master/charts/prometheus-mongodb-exporter)
- [k8s Node Termination Handler](https://github.com/whyeasy/helm-charts/tree/master/charts/k8s-node-termination-handler)
- [Gitlab-extra-expoter](https://github.com/Whyeasy/helm-charts/tree/master/charts/gitlab-extra-exporter)
- [Stackdriver-exporter](https://github.com/Whyeasy/helm-charts/tree/master/charts/stackdriver-exporter)
- [Sonarcloud-exporter](https://github.com/Whyeasy/helm-charts/tree/master/charts/sonarcloud -exporter)

## Installing Charts from this Repository

Add the Repository to Helm:

```sh
helm repo add whyeasy-helm-charts https://whyeasy.github.io/helm-charts
```

Install a chart:

```sh
helm install whyeasy-helm-charts/[CHART_NAME]
```
