{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "loki-helm.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "loki-helm.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "loki-helm.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "loki-helm.labels" -}}
helm.sh/chart: {{ include "loki-helm.chart" . }}
{{ include "loki-helm.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "loki-helm.selectorLabels" -}}
app.kubernetes.io/name: {{ include "loki-helm.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "loki-helm.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "loki-helm.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Naming deployments
*/}}
{{- define "loki-helm.consul" -}}
  {{- printf "%s-consul" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.distributor" -}}
  {{- printf "%s-distributor" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.gateway" -}}
  {{- printf "%s-gateway" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.ingester" -}}
  {{- printf "%s-ingester" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.memcached" -}}
  {{- printf "%s-memcached" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.memcached-frontend" -}}
  {{- printf "%s-memcached-frontend" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.memcached-index-queries" -}}
  {{- printf "%s-memcached-index-queries" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.memcached-index-writes" -}}
  {{- printf "%s-memcached-index-writes" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.querier" -}}
  {{- printf "%s-querier" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.querier-frontend" -}}
  {{- printf "%s-querier-frontend" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.table-manager" -}}
  {{- printf "%s-table-manager" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.canary" -}}
  {{- printf "%s-loki-canary" (include "loki-helm.fullname" .) -}}
{{- end -}}
{{- define "loki-helm.compactor" -}}
  {{- printf "%s-loki-compactor" (include "loki-helm.fullname" .) -}}
{{- end -}}