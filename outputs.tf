output "risk_assessments_id" {
  description = "Map of id values across all risk_assessments, keyed the same as var.risk_assessments except keys with no id are omitted"
  value       = { for k, v in auth0_risk_assessments.risk_assessments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "risk_assessments_enabled" {
  description = "Map of enabled values across all risk_assessments, keyed the same as var.risk_assessments except keys with no enabled are omitted"
  value       = { for k, v in auth0_risk_assessments.risk_assessments : k => v.enabled if v.enabled != null }
}

