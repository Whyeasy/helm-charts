k8s-node-termination-handler
============================
A Helm chart to deploy [k8s-node-termination-handler](https://github.com/GoogleCloudPlatform/k8s-node-termination-handler)

Current chart version is `0.0.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{"nodeAffinity":{"requiredDuringSchedulingIgnoredDuringExecution":{"nodeSelectorTerms":[{"matchExpressions":[{"key":"cloud.google.com/gke-accelerator","operator":"Exists"}]},{"matchExpressions":[{"key":"cloud.google.com/gke-preemptible","operator":"Exists"}]}]}}}` | affinity for scheduler pod assignment |
| env | list | `[{"name":"POD_NAME","valueFrom":{"fieldRef":{"fieldPath":"metadata.name"}}},{"name":"POD_NAMESPACE","valueFrom":{"fieldRef":{"fieldPath":"metadata.namespace"}}},{"name":"SLACK_WEBHOOK_URL","value":""}]` | environment variables for the container |
| envFrom | list | `[]` | environment variable sources for the container |
| fullnameOverride | string | `""` | full name of the chart. |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"whyeasy/k8s-node-termination-handler"` | image repository |
| image.tag | string | `"v0.0.1"` | image tag |
| imagePullSecrets | list | `[]` | image pull secret for private images |
| nameOverride | string | `""` | override name of the chart |
| nodeSelector | object | `{}` | node for scheduler pod assignment |
| podSecurityContext | object | `{}` | specifies security settings for a pod |
| resources | object | `{}` | custom resource configuration |
| securityContext | object | `{"capabilities":{"add":["SYS_BOOT"]}}` | specifies security settings for a container |
| serviceAccount.annotations | object | `{}` | annotations to add to the service account |
| serviceAccount.name | string | `nil` | the name of the service account to use; if not set, a name is generated using the fullname template |
| tolerations | list | `[{"effect":"NoSchedule","operator":"Exists"},{"effect":"NoExecute","operator":"Exists"}]` | tolerations for scheduler pod assignment |
| volumeMounts | list | `[]` | additional volume mounts |
| volumes | list | `[]` | volumes |
