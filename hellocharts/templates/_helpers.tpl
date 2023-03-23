{{/* Generate basic labels */}}
{{- define "generator-date.labels" }}
  labels:
    generator: helm
    date: {{ now | htmlDate }}
    chart: {{ .Chart.Name }}
    version: {{ .Chart.Version }}
{{- end }}

{{/* Simple Random Template */}}
{{- define "template.app" }}
app_name: {{ .Chart.Name }}
app_version: "{{ .Chart.Version }}"
{{- end }}