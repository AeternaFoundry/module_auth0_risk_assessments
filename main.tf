resource "auth0_risk_assessments" "risk_assessments" {
  for_each = var.risk_assessments

  enabled = each.value.enabled
}

