stackdriver-exporter
====================
A slim Helm Chart to deploy a GCP Stackdriver exporter, with BYO SA and Secrets.

Current chart version is `0.1.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Adding any affinity for your deployment. |
| exporter.listenAddress | int | `9255` | What port should be used for the exporter to run on. |
| exporter.path | string | `"/metrics"` | What path should be used for the exporter to run on. |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | Pull Policy to use within Cluster. |
| image.repository | string | `"prometheuscommunity/stackdriver-exporter"` | Image repository to use. |
| image.tag | string | `"v0.9.1"` | Image tag to use. |
| imagePullSecrets | list | `[]` | Providing image pull secrets when needed. |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` | Adding a Node selector for your deployment. |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` | Amount of replicas to run. |
| resources | object | `{"limits":{"memory":"128Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | define custom resources to use for your deployment. |
| securityContext | object | `{}` |  |
| service.port | int | `80` | Define which port to for your service. |
| service.type | string | `"ClusterIP"` | Define service type to deploy. |
| serviceMonitor.additionalLabels | object | `{}` | Adding any additional labels to the service monitor. |
| serviceMonitor.enabled | bool | `false` | Deploy a Prometheus Service Monitor along with the exporter. |
| serviceMonitor.honorLabels | bool | `true` | if true, label conflicts are resolved by keeping label values from the scraped data |
| serviceMonitor.interval | string | `""` | Set scraping interval for the service monitor. |
| serviceMonitor.scrapeTimeout | string | `""` | Set scraping time out for the service monitor. |
| stackdriver.metrics.interval | string | `"5m"` | Interval in which stackdriver should be queried. |
| stackdriver.metrics.offset | string | `"0s"` | Set off set of data to retrieve, may be needed for some metrics. |
| stackdriver.metrics.typePrefixes | string | `"compute.googleapis.com/instance/cpu"` | Comma seperated list of metrics to query in stackdriver. |
| stackdriver.projectId | string | `""` | Define which google Project to query for stackdriver metrics. |
| stackdriver.serviceAccount.key | string | `""` |  |
| stackdriver.serviceAccount.secret | string | `"sd-account"` | Define the secret name which stores the SA credentials. |
| tolerations | list | `[]` | Adding any tolerations to your deployment. |
