jira-exporter
=============
A Helm chart to deploy [jira-exporter](https://github.com/Whyeasy/jira-exporter)

Current chart version is `0.1.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | affinity for scheduler pod assignment |
| env | list | `[]` | environment variables for the container |
| envFrom | list | `[]` | environment variable sources for the container |
| fullnameOverride | string | `""` | full name of the chart. |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"whyeasy/jira-exporter"` | image repository |
| image.tag | string | `"v0.0.3"` | image tag |
| imagePullSecrets | list | `[]` | image pull secret for private images |
| nameOverride | string | `""` | override name of the chart |
| nodeSelector | object | `{}` | node for scheduler pod assignment |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` | custom resource configuration |
| securityContext | object | `{}` |  |
| service.port | int | `8080` | Service port for the exporter |
| service.type | string | `"ClusterIP"` | Serive type for the exporter |
| serviceMonitor.enabled | bool | `false` | Deploy a service monitor along with the exporter. |
| serviceMonitor.endpoints | list | `[]` | Specify a list of Endpoint objects |
| serviceMonitor.interval | string | `""` | Set scraping interval for the service monitor. |
| serviceMonitor.scrapeTimeout | string | `""` | Set scraping time out for the service monitor. |
| strategy.type | string | `"RollingUpdate"` | Strategy for deploying containers |
| tolerations | list | `[]` | tolerations for scheduler pod assignment |
| volumeMounts | list | `[]` | additional volume mounts |
| volumes | list | `[]` | volumes |
