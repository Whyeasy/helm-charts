# osiris

![Version: v0.1.0](https://img.shields.io/badge/Version-v0.1.0-informational?style=flat-square) ![AppVersion: dm-oss-short-dns](https://img.shields.io/badge/AppVersion-dm--oss--short--dns-informational?style=flat-square)

A general purpose, scale-to-zero component for Kubernetes. This chart is based on the forked Osiris by Dailymotion-oss.

---

# Upgrading

## Upgrading from 0.0.x -> 0.1.x

With this upgrade the version of Osiris moved to the forked version of [Dailymotion-oss](https://github.com/dailymotion-oss/osiris).
Because of this move the `Annotations` changed and you can follow the steps from the README on the github page of Dailymotion-oss.

---

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| activator.affinity | object | `{}` | affinity for scheduler pod assignment |
| activator.nodeSelector | object | `{}` | node for scheduler pod assignment |
| activator.replicaCount | int | `1` | Number of replicas for the activator deployment. |
| activator.resources | object | `{}` | custom resource configuration |
| activator.tolerations | list | `[]` | tolerations for scheduler pod assignment |
| endpointsController.affinity | object | `{}` | affinity for scheduler pod assignment |
| endpointsController.nodeSelector | object | `{}` | node for scheduler pod assignment |
| endpointsController.resources | object | `{}` | custom resource configuration |
| endpointsController.tolerations | list | `[]` | tolerations for scheduler pod assignment |
| endpointsHijacker.affinity | object | `{}` | affinity for scheduler pod assignment |
| endpointsHijacker.nodeSelector | object | `{}` | node for scheduler pod assignment |
| endpointsHijacker.replicaCount | int | `1` | Number of replicas for the endpoints hijacker  deployment. |
| endpointsHijacker.resources | object | `{}` | custom resource configuration |
| endpointsHijacker.tolerations | list | `[]` | tolerations for scheduler pod assignment |
| fullnameOverride | string | `""` | Optional full name override |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.repository | string | `"whyeasy/osiris"` | Image location, NOT including the tag |
| image.tag | string | `"dm-oss-short-dns"` | Image tag |
| imagePullSecrets | list | `[]` | image pull secret for private images |
| nameOverride | string | `""` | Optional name override |
| proxyInjector.affinity | object | `{}` | affinity for scheduler pod assignment |
| proxyInjector.nodeSelector | object | `{}` | node for scheduler pod assignment |
| proxyInjector.proxyLogLevel | string | `nil` |  |
| proxyInjector.replicaCount | int | `1` | Number of replicas for the proxy injector deployment. |
| proxyInjector.resources | object | `{}` | custom resource configuration |
| proxyInjector.tolerations | list | `[]` | tolerations for scheduler pod assignment |
| zeroscaler.affinity | object | `{}` | affinity for scheduler pod assignment |
| zeroscaler.metricsCheckInterval | int | `150` | The interval in which the zeroScaler would repeatedly track the pod http request metrics. The value is the number of seconds of the interval |
| zeroscaler.nodeSelector | object | `{}` | node for scheduler pod assignment |
| zeroscaler.resources | object | `{}` | custom resource configuration |
| zeroscaler.tolerations | list | `[]` | tolerations for scheduler pod assignment |
