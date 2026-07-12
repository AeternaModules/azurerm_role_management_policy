output "role_management_policies_id" {
  description = "Map of id values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.id }
}
output "role_management_policies_activation_rules" {
  description = "Map of activation_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.activation_rules }
}
output "role_management_policies_active_assignment_rules" {
  description = "Map of active_assignment_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.active_assignment_rules }
}
output "role_management_policies_description" {
  description = "Map of description values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.description }
}
output "role_management_policies_eligible_assignment_rules" {
  description = "Map of eligible_assignment_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.eligible_assignment_rules }
}
output "role_management_policies_name" {
  description = "Map of name values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.name }
}
output "role_management_policies_notification_rules" {
  description = "Map of notification_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.notification_rules }
}
output "role_management_policies_role_definition_id" {
  description = "Map of role_definition_id values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.role_definition_id }
}
output "role_management_policies_scope" {
  description = "Map of scope values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = { for k, v in azurerm_role_management_policy.role_management_policies : k => v.scope }
}

