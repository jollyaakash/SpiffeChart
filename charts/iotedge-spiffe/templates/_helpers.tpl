{{- define "isIdentityManagerFileProvided" -}}
{{- if .Values.identitymanager.configToml -}} {{/* <-- check parent exists to avoid nil pointer evaluating interface {}.myflag */}}
{{- "true" -}}
{{- end -}}
{{- end -}}