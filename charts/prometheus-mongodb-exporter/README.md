prometheus-mongodb-exporter
===========================
A Prometheus exporter for MongoDB metrics

Current chart version is `0.0.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Node/pod affinities |
| annotations | object | `{}` | Annotations to be added to the pods |
| env | list | `[]` | Extra environment variables passed to pod |
| extraArgs[0] | string | `"--collect.collection"` |  |
| extraArgs[1] | string | `"--collect.database"` |  |
| extraArgs[2] | string | `"--collect.indexusage"` |  |
| extraArgs[3] | string | `"--collect.topmetrics"` |  |
| extraArgs[4] | string | `"--collect.connpoolstats"` |  |
| fullnameOverride | string | `""` | Override the full chart name |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy for images |
| image.repository | string | `"ssheehy/mongodb-exporter"` | Image repository for images |
| image.tag | string | `"0.10.0"` | Image tag for image |
| imagePullSecrets | list | `[]` | List of container registry secrets |
| livenessProbe.httpGet.path | string | `"/"` |  |
| livenessProbe.httpGet.port | string | `"metrics"` |  |
| livenessProbe.initialDelaySeconds | int | `10` |  |
| mongodb.secretKey | string | `nil` | Key within the secret containing the MongoDB URI. |
| mongodb.secretName | string | `nil` | Secret name containing the MongoDB URI. |
| nameOverride | string | `""` | Override the application name |
| nodeSelector | object | `{}` | Add Node labels for pod assginment |
| podAnnotations | object | `{}` |  |
| port | string | `"9216"` | The container port to listen on |
| priorityClassName | string | `""` | Pod priority class name |
| readinessProbe.httpGet.path | string | `"/"` |  |
| readinessProbe.httpGet.port | string | `"metrics"` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| replicas | int | `1` | Number of replicas for the deployment |
| resources | object | `{}` | Custom Resources for the deployment |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"all"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsGroup | int | `10000` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `10000` |  |
| service.annotations | object | `{}` | 	Annotations to be added to the service |
| service.port | int | `9216` | The port to expose |
| service.type | string | `"ClusterIP"` | The type of service to expose |
| serviceAccount.create | bool | `true` | If true, create the service account |
| serviceAccount.name | string | `nil` | Name of the service account |
| serviceMonitor.additionalLabels | object | `{}` | Additional labels to add to the ServiceMonitor |
| serviceMonitor.enabled | bool | `true` | Enable service monitor for the Prometheus Operator |
| serviceMonitor.interval | string | `"30s"` | Interval at which metrics should be scraped |
| serviceMonitor.scrapeTimeout | string | `"10s"` | Interval at which metric scrapes should time out |
| tolerations | list | `[]` | Add tolerations for pod assignment  |
