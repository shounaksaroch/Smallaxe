locals {
  risk_types = [
    "veryhigh",
    "high",
    "medium",
  ]
  policy_types = [
    "BaseProtection",
    "AppProtection",
    "IdentityProtection",
    "AttackSurfaceReduction",
  ]
  ring_types = [
    "Ring0",
    "Ring1",
    "Ring2",
    "Ring3",
  ]
  risk_type_policy_type = distinct(flatten([
    for risk_type in local.risk_types : [
      for policy_type in local.policy_types : {
        risk_type = risk_type
        policy_type  = policy_type
      }
    ]
  ]))

  risk_type_ring_type = distinct(flatten([
    for risk_type in local.risk_types : [
      for ring_type in local.ring_types : {
        risk_type = risk_type
        ring_type    = ring_type
      }
    ]
  ]))
}

resource "azuread_group" "Neo-CondPol" {
  # We need a map to use for_each, so we convert our list into a map by adding a unique key:
  for_each         = { for entry in local.risk_type_ring_type : "${entry.risk_type}.${entry.ring_type}" => entry }
  display_name     = "NeoCA-UserGroup-${each.value.risk_type}-${each.value.ring_type}"
  security_enabled = true
  description      = "Manually managed by Conditional Access administrators"

}
