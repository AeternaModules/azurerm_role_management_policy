output "role_management_policies_id" {
  description = "Map of id values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "role_management_policies_activation_rules" {
  description = "Map of activation_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.activation_rules if v.activation_rules != null && length(v.activation_rules) > 0 }
}
output "role_management_policies_active_assignment_rules" {
  description = "Map of active_assignment_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.active_assignment_rules if v.active_assignment_rules != null && length(v.active_assignment_rules) > 0 }
}
output "role_management_policies_description" {
  description = "Map of description values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "role_management_policies_eligible_assignment_rules" {
  description = "Map of eligible_assignment_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.eligible_assignment_rules if v.eligible_assignment_rules != null && length(v.eligible_assignment_rules) > 0 }
}
output "role_management_policies_name" {
  description = "Map of name values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "role_management_policies_notification_rules" {
  description = "Map of notification_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.notification_rules if v.notification_rules != null && length(v.notification_rules) > 0 }
}
output "role_management_policies_role_definition_id" {
  description = "Map of role_definition_id values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.role_definition_id if v.role_definition_id != null && length(v.role_definition_id) > 0 }
}
output "role_management_policies_scope" {
  description = "Map of scope values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

