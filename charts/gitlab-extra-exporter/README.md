gitlab-extra-exporter
=====================
A Helm chart to deploy [gitlab-extra-exporter](https://github.com/Whyeasy/gitlab-extra-exporter)

Current chart version is `0.1.11`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | affinity for scheduler pod assignment |
| env | list | `[]` | environment variables for the container |
| envFrom | list | `[]` | environment variable sources for the container |
| fullnameOverride | string | `""` | full name of the chart. |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"whyeasy/gitlab-extra-exporter"` | image repository |
| image.tag | string | `"v0.0.10"` | image tag |
| imagePullSecrets | list | `[]` | image pull secret for private images |
| nameOverride | string | `""` | override name of the chart |
| nodeSelector | object | `{}` | node for scheduler pod assignment |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` | custom resource configuration |
| securityContext | object | `{}` |  |
| service.port | int | `8080` | Service port for the exporter |
| service.type | string | `"ClusterIP"` | Serive type for the exporter |
| serviceMonitor.enabled | bool | `true` | Deploy a service monitor along with the exporter. |
| serviceMonitor.interval | string | `"5m"` | Set scraping interval for the service monitor. |
| serviceMonitor.scrapeTimeout | string | `"30s"` | Set scraping time out for the service monitor. |
| strategy.type | string | `"RollingUpdate"` | Strategy for deploying containers |
| tolerations | list | `[]` | tolerations for scheduler pod assignment |
| volumeMounts | list | `[]` | additional volume mounts |
| volumes | list | `[]` | volumes |
