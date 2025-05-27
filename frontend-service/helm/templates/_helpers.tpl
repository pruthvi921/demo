{{/* Generate a fullname */}}
{{- define "frontend-service.fullname" -}}
{{ include "frontend-service.name" . }}-{{ .Release.Name }}
{{- end }}

{{/* Base name */}}
{{- define "frontend-service.name" -}}
{{ .Chart.Name }}
{{- end }}