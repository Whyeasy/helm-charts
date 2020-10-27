# Migration to Loki 2.0

## Breaking changes:

- With the migration of the chart to Loki 2.0. I decided to remove the Consul deployment from within this chart. If you use Consul for your ring communication. Please deploy separate Consul Deployment.
- Config of Loki moved in to `values.yaml` to make it easier to configure Loki without releasing new charts for Loki. To migrate to this solution. Please copy the data of `config.yaml` from [here](https://github.com/Whyeasy/helm-charts/blob/loki-distributed-0.3.8/charts/distributed-loki/templates/config/loki-cm.yaml) in to your `values.yaml` in your helm deployment under `loki.config`.

Please check what default config files got deleted in the commits. Hard code these in to your config.
