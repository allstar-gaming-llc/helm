{{/* Creates a probe (liveness, readiness, startup, etc.) for a pod */}}
{{- define "probe" }}
{{- if .initialDelay }}
initialDelaySeconds: {{ .initialDelay }}
{{- end }}
{{- if .period }}
periodSeconds: {{ .period }}
{{- end }}
{{- if eq .type "httpGet" }}
httpGet:
  path: {{ .path }}
  port: {{ .port }}
{{- end }}
{{- end }}

