# prometheus-statuspage-pusher

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.1](https://img.shields.io/badge/AppVersion-0.1.1-informational?style=flat-square)

A helm chart to deploy [prometheus-statuspage-pusher](https://github.com/Whyeasy/prometheus-statuspage-pusher).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Node/pod affinities |
| annotations | object | `{}` | Annotations to be added to the pods |
| env | list | `[]` | environment variables for the container |
| envFrom | list | `[]` | environment variable sources for the container |
| extraVolumeMounts | list | `[]` | additional volume mounts |
| extraVolumes | list | `[]` | additional volumes |
| fullnameOverride | string | `""` | full name of the chart. |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"whyeasy/prometheus-statuspage-pusher"` | image repository |
| image.tag | string | `"0.1.1"` | image tag |
| imagePullSecrets | list | `[]` | image pull secret for private images |
| nameOverride | string | `""` | override name of the chart |
| nodeSelector | object | `{}` | node for scheduler pod assignment |
| podSecurityContext | object | `{}` | Add security context to pods |
| prometheus.metrics | list | `["metricID: prometheus-expression","metricID2: prometheus-expression2"]` | Entries of metricsID and Prometheus expression to send to Statuspage |
| prometheus.url | string | `"http://localhost:9091/prometheus"` | URL of Prometheus API |
| resources | object | `{}` | custom resource configuration |
| securityContext | object | `{}` | Add security context to deployment |
| statuspage.id | int | `0` | Statuspage ID |
| statuspage.pushInterval | string | `"30s"` | Metric push interval to Statuspage |
| statuspage.url | string | `"https://api.statuspage.io"` | statuspage URL |
| strategy.type | string | `"RollingUpdate"` | Strategy for deploying containers |