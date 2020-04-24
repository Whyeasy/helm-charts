loki-distributed
================
A Helm chart for Kubernetes

Current chart version is `0.1.0`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| consul.affinity | object | `{}` | Replace default affinity with custom affinity |
| consul.image | string | `"consul:1.5.3"` | Image repository for the Consul images. |
| consul.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| consul.pullPolicy | string | `"IfNotPresent"` | Image pull policy for the Consul images. |
| consul.replicaCount | int | `3` | Number of replicas for the Consul deployment. |
| consul.resources | object | `{"requests":{"cpu":"100m","memory":"500Mi"}}` | Custom resources for the Consul deployment. |
| consul.tolarations | list | `[]` |  |
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
| gateway.image | string | `"nginx:1.15.1-alpine"` | Image repository for the Gateway images. |
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
| ingester.config.chunkIdle | string | `"30m"` | How long chunks should sit in-memory with no updates before being flushed if they don't hit the max block size |
| ingester.config.chunkSize | int | `262144` | The targeted _uncompressed_ size in bytes of a chunk block |
| ingester.config.chunkTargetSize | int | `0` | A target _compressed_ size in bytes for chunks |
| ingester.config.maxChunkAge | string | `"1h"` | The maximum duration of a timeseries chunk in memory. |
| ingester.config.replicationFactor | int | `2` | Replication factor between ingesters. Minimal is 1. |
| ingester.config.transferRetries | int | `10` |  |
| ingester.env | list | `[]` | Allow Extra env variables into the deployment |
| ingester.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| ingester.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| ingester.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| ingester.replicaCount | int | `3` | Number of replicas for the Ingester deployment. |
| ingester.resources | object | `{"limits":{"cpu":2,"memory":"10Gi"},"requests":{"cpu":1,"memory":"5Gi"}}` | Custom resources for the Ingester deployment. |
| ingester.tolarations | list | `[]` |  |
| loki.image | string | `"grafana/loki:1.4.1"` | Image repository for Loki images. |
| loki.pullPolicy | string | `"IfNotPresent"` | Image pull policy for Loki images. |
| memcached.affinity | object | `{}` | Replace default affinity with custom affinity |
| memcached.image | string | `"memcached:1.5.17-alpine"` | Image repository for the Memcached images. |
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
| querier.config.parallelism | int | `10` | Number of simultaneous queries to process |
| querier.env | list | `[]` | Allow Extra env variables into the deployment |
| querier.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| querier.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| querier.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| querier.replicaCount | int | `3` | Number of replicas for the Querier deployment. |
| querier.resources | object | `{}` | Custom resources for the Querier deployment. |
| querier.tolarations | list | `[]` |  |
| querierFrontend.affinity | object | `{}` | Replace default affinity with custom affinity |
| querierFrontend.config.cacheResult | bool | `true` | Cache Results  |
| querierFrontend.config.compressResponses | bool | `true` | Compress responses fomr queries. |
| querierFrontend.config.logQueries | string | `""` | Log queries that are longer than X amount of time. |
| querierFrontend.config.splitQueries | string | `"30m"` | Set value for parallelize queries intervals |
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
| storage.config.bucketName | string | `"loki_distributed"` | Name of your gcs bucket. |
| storage.config.retentionDelete | bool | `false` | Enable the deletion of indexes. |
| storage.config.retentionPeriod | int | `0` | Retention period of storing logs. |
| storage.config.storeUrl | string | `"loki-cassandra.monitoring.svc"` | Url of your cassandra instance. |
| storage.objectStore | string | `"gcs"` |  |
| storage.store | string | `"cassandra"` | Type of store to use for you indexes. Currently only cassandra is supported. |
| tableManager.affinity | object | `{}` | Replace default affinity with custom affinity |
| tableManager.env | list | `[]` | Allow Extra env variables into the deployment |
| tableManager.extraVolumeMounts | list | `[]` | Allow Extra volume mounts into the deployment |
| tableManager.extraVolumes | list | `[]` | Allow Extra volumes into the deployment |
| tableManager.nodeSelector | object | `{}` | Add Node labels for pod assginment |
| tableManager.replicaCount | int | `1` | Number of replicas for the Table-manager deployment. |
| tableManager.resources | object | `{"limits":{"cpu":"200m","memory":"200Mi"},"requests":{"cpu":"100m","memory":"100Mi"}}` | Custom resources for the Table-manager deployment. |
| tableManager.tolarations | list | `[]` |  |
