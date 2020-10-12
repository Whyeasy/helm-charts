osiris
======
A general purpose, scale-to-zero component for Kubernetes

Current chart version is `v0.0.2`

Source code can be found [here](https://github.com/whyeasy/osiris)



## Chart Values

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
| image.tag | string | `"v0.3.0"` | Image tag |
| imagePullSecrets | list | `[]` | image pull secret for private images |
| nameOverride | string | `""` | Optional name override |
| proxyInjector.affinity | object | `{}` | affinity for scheduler pod assignment |
| proxyInjector.nodeSelector | object | `{}` | node for scheduler pod assignment |
| proxyInjector.replicaCount | int | `1` | Number of replicas for the proxy injector deployment. |
| proxyInjector.resources | object | `{}` | custom resource configuration |
| proxyInjector.tolerations | list | `[]` | tolerations for scheduler pod assignment |
| zeroscaler.affinity | object | `{}` | affinity for scheduler pod assignment |
| zeroscaler.metricsCheckInterval | int | `150` | The interval in which the zeroScaler would repeatedly track the pod http request metrics. The value is the number of seconds of the interval |
| zeroscaler.nodeSelector | object | `{}` | node for scheduler pod assignment |
| zeroscaler.resources | object | `{}` | custom resource configuration |
| zeroscaler.tolerations | list | `[]` | tolerations for scheduler pod assignment |
