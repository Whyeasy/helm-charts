gitlab-extra-exporter
=====================
A Helm chart to deploy [gitlab-extra-exporter](https://github.com/Whyeasy/gitlab-extra-exporter)

Current chart version is `0.1.0`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | affinity for scheduler pod assignment |
| env | list | `[]` | environment variables for the container |
| envFrom | list | `[]` | environment variable sources for the container |
| fullnameOverride | string | `""` | full name of the chart. |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"whyeasy/gitlab-extra-exporter"` | image repository |
| image.tag | string | `"v0.0.1"` | image tag |
| imagePullSecrets | list | `[]` | image pull secret for private images |
| nameOverride | string | `""` | override name of the chart |
| nodeSelector | object | `{}` | node for scheduler pod assignment |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` | custom resource configuration |
| securityContext | object | `{}` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceMonitor.enabled | bool | `true` |  |
| serviceMonitor.interval | string | `"5m"` |  |
| serviceMonitor.scrapeTimeout | string | `"30s"` |  |
| tolerations | list | `[]` | tolerations for scheduler pod assignment |
| volumeMounts | list | `[]` | additional volume mounts |
| volumes | list | `[]` | volumes |
