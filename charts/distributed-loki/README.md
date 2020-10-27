loki-distributed
================
A Helm chart for Kubernetes

Current chart version is `0.4.7`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| canary.affinity | object | `{}` | Replace default affinity with custom affinity |
| canary.args | list | `[]` | Allow extra arguments into the container. |
| canary.enabled | bool | `false` | Enable the Loki-Canary deployment |
| canary.env | list | `[]` | Allow Extra env variables into the deployment |
| canary.image | string | `"grafana/loki-canary:2.0.0"` | Which image to use for Loki-Canary |
| canary.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| canary.resources | object | `{}` | Custom resources for the Loki-Canary deployment. |
| canary.tolarations | list | `[]` |  |
| distributor.affinity | object | `{}` | Replace default affinity with custom affinity |
| distributor.env | list | `[]` | Allow Extra env variables into the deployment |
| distributor.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| distributor.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| distributor.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| distributor.replicaCount | int | `3` | Number of replicas for the Distributor deployment. |
| distributor.resources | object | `{"limits":{"cpu":1,"memory":"1Gi"},"requests":{"cpu":"500m","memory":"500Mi"}}` | Custom resources for the Distributor deployment. |
| distributor.tolarations | list | `[]` |  |
| gateway.affinity | object | `{}` | Replace default affinity with custom affinity |
| gateway.env | list | `[]` | Allow Extra env variables into the deployment |
| gateway.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| gateway.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| gateway.image | string | `"nginx:1.18.0-alpine"` | Image repository for the Gateway images. |
| gateway.ingress.annotations | object | `{}` |  |
| gateway.ingress.enabled | bool | `false` | Enable Ingress for your gateway deployment |
| gateway.ingress.host | string | `"chart-example.local"` |  |
| gateway.ingress.tls | list | `[]` |  |
| gateway.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| gateway.pullPolicy | string | `"IfNotPresent"` | Image pull policy for the Gateway images. |
| gateway.replicaCount | int | `3` | Number of replicas for the Gateway deployment. |
| gateway.resources | object | `{"requests":{"cpu":"50m","memory":"100Mi"}}` | Custom resources for the Gateway deployment. |
| gateway.service.annotations | object | `{}` |  |
| gateway.service.type | string | `"ClusterIP"` |  |
| gateway.tolarations | list | `[]` |  |
| ingester.affinity | object | `{}` | Replace default affinity with custom affinity |
| ingester.env | list | `[]` | Allow Extra env variables into the deployment |
| ingester.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| ingester.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| ingester.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| ingester.persistence.size | string | `"10Gi"` | Specify disk size for Ingester persistence storage |
| ingester.persistence.storageClass | string | `"standard"` | Specify custom storageClass to use. |
| ingester.replicaCount | int | `3` | Number of replicas for the Ingester deployment. |
| ingester.resources | object | `{"limits":{"cpu":2,"memory":"10Gi"},"requests":{"cpu":1,"memory":"5Gi"}}` | Custom resources for the Ingester deployment. |
| ingester.tolarations | list | `[]` |  |
| loki.config | string | `""` | Provide the config for Loki. |
| loki.image | string | `"grafana/loki:2.0.0"` | Image repository for Loki images. |
| loki.pullPolicy | string | `"IfNotPresent"` | Image pull policy for Loki images. |
| loki.useBoltDBShipper | bool | `false` |  |
| memberlist.enable | bool | `true` | Enable the ring to be a Mmeberslist. This will disable consul. |
| memberlist.port | int | `7946` | Port to listen on for gossip messages. |
| memcached.affinity | object | `{}` | Replace default affinity with custom affinity |
| memcached.image | string | `"memcached:1.6.7-alpine"` | Image repository for the Memcached images. |
| memcached.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| memcached.pullPolicy | string | `"IfNotPresent"` | Image pull policy for the Memcached images. |
| memcached.replicaCount | int | `3` | Number of replicas for the Memcached deployment. |
| memcached.resources | object | `{"limits":{"cpu":3,"memory":"6Gi"},"requests":{"cpu":"500m","memory":"5Gi"}}` | Custom resources for the Memcached deployment. |
| memcached.tolarations | list | `[]` |  |
| memcachedFrontend.affinity | object | `{}` | Replace default affinity with custom affinity |
| memcachedFrontend.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| memcachedFrontend.replicaCount | int | `3` | Number of replicas for the Memcached-frontend deployment. |
| memcachedFrontend.resources | object | `{"limits":{"cpu":3,"memory":"1546Mi"},"requests":{"cpu":"500m","memory":"1329Mi"}}` | Custom resources for the Memcached-frontend deployment. |
| memcachedFrontend.tolarations | list | `[]` |  |
| memcachedIndexQueries.affinity | object | `{}` | Add custom affinity to deployment |
| memcachedIndexQueries.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| memcachedIndexQueries.replicaCount | int | `3` | Number of replicas for the Memcached-index-queries deployment. |
| memcachedIndexQueries.resources | object | `{"limits":{"cpu":3,"memory":"1536Mi"},"requests":{"cpu":"500m","memory":"1329Mi"}}` | Custom resources for the Memcached-index-queries deployment. |
| memcachedIndexQueries.tolarations | list | `[]` |  |
| memcachedIndexWrites.affinity | object | `{}` | Replace default affinity with custom affinity |
| memcachedIndexWrites.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| memcachedIndexWrites.replicaCount | int | `3` | Number of replicas for the Memcached-index-writes deployment. |
| memcachedIndexWrites.resources | object | `{"limits":{"cpu":3,"memory":"1536Mi"},"requests":{"cpu":"500m","memory":"1329Mi"}}` | Custom resources for the Memcached-index-writes deployment. |
| memcachedIndexWrites.tolarations | list | `[]` |  |
| querier.affinity | object | `{}` | Replace default affinity with custom affinity |
| querier.env | list | `[]` | Allow Extra env variables into the deployment |
| querier.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| querier.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| querier.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| querier.persistence.size | string | `"10Gi"` | Specify disk size for Querier persistence storage |
| querier.persistence.storageClass | string | `"standard"` | Specify custom storageClass to use. |
| querier.replicaCount | int | `3` | Number of replicas for the Querier deployment. |
| querier.resources | object | `{}` | Custom resources for the Querier deployment. |
| querier.tolarations | list | `[]` |  |
| querierFrontend.affinity | object | `{}` | Replace default affinity with custom affinity |
| querierFrontend.env | list | `[]` | Allow Extra env variables into the deployment |
| querierFrontend.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| querierFrontend.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| querierFrontend.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| querierFrontend.replicaCount | int | `2` | Number of replicas for the Querier-frontend deployment. |
| querierFrontend.resources | object | `{"limits":{"memory":"1200Mi"},"requests":{"cpu":"2","memory":"600Mi"}}` | Customer resources for the Querier-frontend deployment. |
| querierFrontend.tolarations | list | `[]` |  |
| serviceMonitor.additionalLabels | object | `{}` | Set additional labels for the service monitor. |
| serviceMonitor.enabled | bool | `false` | Enable service monitors for Loki deployment. |
| serviceMonitor.interval | string | `""` | Set interval scraping the targets. |
| tableManager.affinity | object | `{}` | Replace default affinity with custom affinity |
| tableManager.enabled | bool | `true` | Needed when using cassandra as index strogae! |
| tableManager.env | list | `[]` | Allow Extra env variables into the deployment |
| tableManager.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| tableManager.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| tableManager.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| tableManager.replicaCount | int | `1` | Number of replicas for the Table-manager deployment. |
| tableManager.resources | object | `{"limits":{"cpu":"200m","memory":"200Mi"},"requests":{"cpu":"100m","memory":"100Mi"}}` | Custom resources for the Table-manager deployment. |
| tableManager.tolarations | list | `[]` |  |
