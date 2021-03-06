# version-checker

![Version: 0.2.2](https://img.shields.io/badge/Version-0.2.2-informational?style=flat-square) ![AppVersion: v0.2.1](https://img.shields.io/badge/AppVersion-v0.2.1-informational?style=flat-square)

A Helm chart for version-checker

**Homepage:** <https://github.com/joshvanl/verison-checker>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| acr.passwordKey | string | `nil` | Provide the secret key containing the ACR Password. |
| acr.refreshTokenKey | string | `nil` | Provide the secret key containing the ACR Refresh Token. |
| acr.usernameKey | string | `nil` | Provide the secret key containing the ACR Username |
| affinity | object | `{}` | Adding any affinity for your deployment. |
| docker.passwordKey | string | `nil` | Provide the secret key containing the Docker Password. |
| docker.tokenKey | string | `nil` | Provide the secret key containing the Docker Token. |
| docker.usernameKey | string | `nil` | Provide the secret key containing the Docker Username |
| ecr.accessKeyIDKey | string | `nil` | Provide the secret key containing the ECR Access Key |
| ecr.secretAccessKey | string | `nil` | Provide the secret key containing the ECR Secret Access Key |
| ecr.sessionTokenKey | string | `nil` | Provide the secret key containing the ECR Session Token |
| gcr.tokenKey | string | `nil` | Provide the secret key containing the GCR Token. |
| image.pullPolicy | string | `"IfNotPresent"` | Pull Policy to use within Cluster. |
| image.repository | string | `"quay.io/jetstack/version-checker"` | Image repository to use. |
| image.tag | string | `"v0.2.1"` | Image tag to use. |
| nodeSelector | object | `{}` | Adding a Node selector for your deployment. |
| quay.tokenKey | string | `nil` | Provide the secret key containing the Quay Token. |
| replicaCount | int | `1` | Amount of replicas to run. |
| resources | object | `{}` | define custom resources to use for your deployment. |
| secretName | string | `""` | Provide the name of the secret that contains all tokens, password and/or usernames. |
| selfhosted.registries | object | `{}` | Provide a list containing the needed info for selfhosted registries. |
| service.port | int | `8080` | Define which port to for your service. |
| serviceMonitor.additionalLabels | object | `{}` | Adding any additional labels to the service monitor. |
| serviceMonitor.enabled | bool | `false` | Deploy a Prometheus Service Monitor along with the exporter. |
| tolerations | list | `[]` | Adding any tolerations to your deployment. |
| versionChecker.imageCacheTimeout | string | `"30m"` | Specify the time version checker needs to refresh image versions. |
| versionChecker.logLevel | string | `"info"` | Specify the log level. |
| versionChecker.metricsServingAddress | string | `"0.0.0.0:8080"` | Specify the listening address and port for serving metrics. |
| versionChecker.testAllContainers | bool | `true` | Specify if all containers need to be checked or use annotation. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.4.0](https://github.com/norwoodj/helm-docs/releases/v1.4.0)
