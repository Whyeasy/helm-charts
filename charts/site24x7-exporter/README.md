# site24x7-exporter

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.5.2](https://img.shields.io/badge/AppVersion-0.5.2-informational?style=flat-square)

A Helm chart to deploy [site24x7-exporter](https://github.com/svenstaro/site24x7_exporter).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Node/pod affinities |
| env | list | `[]` | environment variables for the container |
| envFrom | list | `[]` | environment variable sources for the container |
| fullnameOverride | string | `""` | full name of the chart. |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"svenstaro/site24x7_exporter"` | image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | image pull secret for private images |
| nameOverride | string | `""` | override name of the chart |
| nodeSelector | object | `{}` | Node for scheduler pod assignment |
| podAnnotations | object | `{}` | Add annotations on pods |
| podSecurityContext | object | `{}` | Add security context to pods |
| replicaCount | int | `1` |  |
| resources | object | `{}` | custom resource configuration |
| securityContext | object | `{}` | Add security context to deployment |
| service.port | int | `8080` | Service port for the exporter |
| service.type | string | `"ClusterIP"` | Serive type for the exporter |
| serviceMonitor.enabled | bool | `false` | Deploy a service monitor along with the exporter. |
| serviceMonitor.endpoints | list | `[]` | Specify addiotnal Endpoint objects |
| serviceMonitor.interval | string | `""` | Set scraping interval for the service monitor. |
| serviceMonitor.scrapeTimeout | string | `""` | Set scraping time out for the service monitor. |
| site24x7.endpoint | string | `"site24x7.com"` | API endpoint to use (depends on region, see https://site24x7.com/help/api) [possible values: site24x7.com, site24x7.eu, site24x7.cn, site24x7.in,site24x7.net.au] |
| strategy.type | string | `"RollingUpdate"` | Strategy for deploying containers |
| tolerations | list | `[]` | Adding any tolerations to your deployment. |