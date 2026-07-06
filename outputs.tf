output "role_management_policies" {
  description = "All role_management_policy resources"
  value       = azurerm_role_management_policy.role_management_policies
}
output "role_management_policies_activation_rules" {
  description = "List of activation_rules values across all role_management_policies"
  value       = [for k, v in azurerm_role_management_policy.role_management_policies : v.activation_rules]
}
output "role_management_policies_active_assignment_rules" {
  description = "List of active_assignment_rules values across all role_management_policies"
  value       = [for k, v in azurerm_role_management_policy.role_management_policies : v.active_assignment_rules]
}
output "role_management_policies_description" {
  description = "List of description values across all role_management_policies"
  value       = [for k, v in azurerm_role_management_policy.role_management_policies : v.description]
}
output "role_management_policies_eligible_assignment_rules" {
  description = "List of eligible_assignment_rules values across all role_management_policies"
  value       = [for k, v in azurerm_role_management_policy.role_management_policies : v.eligible_assignment_rules]
}
output "role_management_policies_name" {
  description = "List of name values across all role_management_policies"
  value       = [for k, v in azurerm_role_management_policy.role_management_policies : v.name]
}
output "role_management_policies_notification_rules" {
  description = "List of notification_rules values across all role_management_policies"
  value       = [for k, v in azurerm_role_management_policy.role_management_policies : v.notification_rules]
}
output "role_management_policies_role_definition_id" {
  description = "List of role_definition_id values across all role_management_policies"
  value       = [for k, v in azurerm_role_management_policy.role_management_policies : v.role_definition_id]
}
output "role_management_policies_scope" {
  description = "List of scope values across all role_management_policies"
  value       = [for k, v in azurerm_role_management_policy.role_management_policies : v.scope]
}

