# Helm-Charts

This repository contains [Helm](https://helm.sh) charts for various projects

- [Distributed Loki](https://github.com/whyeasy/helm-charts/tree/master/charts/distributed-loki) -- Deprecated
- [Gitlab-extra-exporter](https://github.com/Whyeasy/helm-charts/tree/master/charts/gitlab-extra-exporter)
- [Eventrouter](https://github.com/Whyeasy/helm-charts/tree/master/charts/eventrouter)
- [Jira-exporter](https://github.com/Whyeasy/helm-charts/tree/master/charts/jira-exporter)
- [Jira-sd-exporter](https://github.com/Whyeasy/helm-charts/tree/master/charts/jira-sd-exporter)
- [k8s Node Termination Handler](https://github.com/whyeasy/helm-charts/tree/master/charts/k8s-node-termination-handler)
- [Oauth2-proxy](https://github.com/Whyeasy/helm-charts/tree/master/charts/oauth2-proxy)
- [Osiris](https://github.com/whyeasy/helm-charts/tree/master/charts/osiris)
- [Prometheus MongoDb Exporter](https://github.com/whyeasy/helm-charts/tree/master/charts/prometheus-mongodb-exporter)
- [Stackdriver-exporter](https://github.com/Whyeasy/helm-charts/tree/master/charts/stackdriver-exporter) -- Deprecated
- [Sonarcloud-exporter](https://github.com/Whyeasy/helm-charts/tree/master/charts/sonarcloud-exporter)
- [Version-checker](https://github.com/Whyeasy/helm-charts/tree/master/charts/version-checker)

## Installing Charts from this Repository

Add the Repository to Helm:

```sh
helm repo add whyeasy-helm-charts https://whyeasy.github.io/helm-charts
```

Install a chart:

```sh
helm install whyeasy-helm-charts/[CHART_NAME]
```
