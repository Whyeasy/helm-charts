loki-distributed
================
A Helm chart for Kubernetes

Current chart version is `0.6.0`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| canary.affinity | object | `{}` | Replace default affinity with custom affinity |
| canary.args | list | `[]` | Allow extra arguments into the container. |
| canary.enabled | bool | `false` | Enable the Loki-Canary deployment |
| canary.env | list | `[]` | Allow Extra env variables into the deployment |
| canary.image | string | `"grafana/loki-canary:2.0.0"` | Which image to use for Loki-Canary |
| canary.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| canary.resources | object | `{}` | Custom resources for the Loki-Canary deployment. |
| canary.tolerations | list | `[]` |  |
| compactor.affinity | object | `{}` | Replace default affinity with custom affinity |
| compactor.env | list | `[]` | Allow Extra env variables into the deployment |
| compactor.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| compactor.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| compactor.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| compactor.persistence.size | string | `"10Gi"` | Specify disk size for compactor persistence storage |
| compactor.persistence.storageClass | string | `"standard"` | Specify custom storageClass to use. |
| compactor.replicaCount | int | `1` | Number of replicas for the compactor deployment. |
| compactor.resources | object | `{}` | Custom resources for the compactor deployment. |
| compactor.tolerations | list | `[]` |  |
| distributor.affinity | object | `{}` | Replace default affinity with custom affinity |
| distributor.env | list | `[]` | Allow Extra env variables into the deployment |
| distributor.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| distributor.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| distributor.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| distributor.replicaCount | int | `3` | Number of replicas for the Distributor deployment. |
| distributor.resources | object | `{}` | Custom resources for the Distributor deployment. |
| distributor.tolerations | list | `[]` |  |
| gateway.affinity | object | `{}` | Replace default affinity with custom affinity |
| gateway.env | list | `[]` | Allow Extra env variables into the deployment |
| gateway.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| gateway.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| gateway.image | string | `"nginx:1.18.0-alpine"` | Image repository for the Gateway images. |
| gateway.ingress.annotations | object | `{}` |  |
| gateway.ingress.enabled | bool | `false` | Enable Ingress for your gateway deployment |
| gateway.ingress.host | string | `"chart-example.local"` |  |
| gateway.ingress.tls | list | `[]` |  |
| gateway.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| gateway.pullPolicy | string | `"IfNotPresent"` | Image pull policy for the Gateway images. |
| gateway.replicaCount | int | `3` | Number of replicas for the Gateway deployment. |
| gateway.resources | object | `{}` | Custom resources for the Gateway deployment. |
| gateway.service.annotations | object | `{}` |  |
| gateway.service.type | string | `"ClusterIP"` |  |
| gateway.tolerations | list | `[]` |  |
| ingester.affinity | object | `{}` | Replace default affinity with custom affinity |
| ingester.env | list | `[]` | Allow Extra env variables into the deployment |
| ingester.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| ingester.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| ingester.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| ingester.persistence.size | string | `"10Gi"` | Specify disk size for Ingester persistence storage |
| ingester.persistence.storageClass | string | `"standard"` | Specify custom storageClass to use. |
| ingester.replicaCount | int | `3` | Number of replicas for the Ingester deployment. |
| ingester.resources | object | `{}` | Custom resources for the Ingester deployment. |
| ingester.tolerations | list | `[]` |  |
| loki.config | string | `""` | Provide the config for Loki. |
| loki.image | string | `"grafana/loki:2.0.0"` | Image repository for Loki images. |
| loki.pullPolicy | string | `"IfNotPresent"` | Image pull policy for Loki images. |
| loki.useBoltDBShipper | bool | `false` |  |
| memberlist.enable | bool | `true` | Enable the ring to be a Meberslist. This will disable consul. |
| memberlist.port | int | `7946` | Port to listen on for gossip messages. |
| memcached.affinity | object | `{}` | Replace default affinity with custom affinity |
| memcached.image | string | `"memcached:1.6.7-alpine"` | Image repository for the Memcached images. |
| memcached.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| memcached.pullPolicy | string | `"IfNotPresent"` | Image pull policy for the Memcached images. |
| memcached.replicaCount | int | `3` | Number of replicas for the Memcached deployment. |
| memcached.resources | object | `{}` | Custom resources for the Memcached deployment. |
| memcached.tolerations | list | `[]` |  |
| memcachedFrontend.affinity | object | `{}` | Replace default affinity with custom affinity |
| memcachedFrontend.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| memcachedFrontend.replicaCount | int | `3` | Number of replicas for the Memcached-frontend deployment. |
| memcachedFrontend.resources | object | `{}` | Custom resources for the Memcached-frontend deployment. |
| memcachedFrontend.tolerations | list | `[]` |  |
| memcachedIndexQueries.affinity | object | `{}` | Add custom affinity to deployment |
| memcachedIndexQueries.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| memcachedIndexQueries.replicaCount | int | `3` | Number of replicas for the Memcached-index-queries deployment. |
| memcachedIndexQueries.resources | object | `{}` | Custom resources for the Memcached-index-queries deployment. |
| memcachedIndexQueries.tolerations | list | `[]` |  |
| memcachedIndexWrites.affinity | object | `{}` | Replace default affinity with custom affinity |
| memcachedIndexWrites.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| memcachedIndexWrites.replicaCount | int | `3` | Number of replicas for the Memcached-index-writes deployment. |
| memcachedIndexWrites.resources | object | `{}` | Custom resources for the Memcached-index-writes deployment. |
| memcachedIndexWrites.tolerations | list | `[]` |  |
| querier.affinity | object | `{}` | Replace default affinity with custom affinity |
| querier.env | list | `[]` | Allow Extra env variables into the deployment |
| querier.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| querier.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| querier.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| querier.persistence.size | string | `"10Gi"` | Specify disk size for Querier persistence storage |
| querier.persistence.storageClass | string | `"standard"` | Specify custom storageClass to use. |
| querier.replicaCount | int | `3` | Number of replicas for the Querier deployment. |
| querier.resources | object | `{}` | Custom resources for the Querier deployment. |
| querier.tolerations | list | `[]` |  |
| querierFrontend.affinity | object | `{}` | Replace default affinity with custom affinity |
| querierFrontend.env | list | `[]` | Allow Extra env variables into the deployment |
| querierFrontend.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| querierFrontend.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| querierFrontend.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| querierFrontend.replicaCount | int | `2` | Number of replicas for the Querier-frontend deployment. |
| querierFrontend.resources | object | `{}` | Customer resources for the Querier-frontend deployment. |
| querierFrontend.tolerations | list | `[]` |  |
| serviceMonitor.additionalLabels | object | `{}` | Set additional labels for the service monitor. |
| serviceMonitor.enabled | bool | `false` | Enable service monitors for Loki deployment. |
| serviceMonitor.interval | string | `""` | Set interval scraping the targets. |
| tableManager.affinity | object | `{}` | Replace default affinity with custom affinity |
| tableManager.enabled | bool | `true` | Needed when using cassandra as index strogae! |
| tableManager.env | list | `[]` | Allow Extra env variables into the deployment |
| tableManager.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| tableManager.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| tableManager.nodeSelector | object | `{}` | Add Node labels for pod assignment |
| tableManager.replicaCount | int | `1` | Number of replicas for the Table-manager deployment. |
| tableManager.resources | object | `{}` | Custom resources for the Table-manager deployment. |
| tableManager.tolerations | list | `[]` |  |
