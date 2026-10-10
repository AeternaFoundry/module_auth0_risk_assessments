variable "risk_assessments" {
  description = <<EOT
Map of risk_assessments, attributes below
Required:
    - enabled
EOT

  type = map(object({
    enabled = bool
  }))
}

