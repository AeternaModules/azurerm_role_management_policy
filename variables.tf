variable "role_management_policys" {
  description = <<EOT
Map of role_management_policys, attributes below
Required:
    - role_definition_id
    - scope
Optional:
    - activation_rules (block):
        - approval_stage (optional, block):
            - primary_approver (required, block):
                - object_id (required)
                - type (required)
        - maximum_duration (optional)
        - require_approval (optional)
        - require_justification (optional)
        - require_multifactor_authentication (optional)
        - require_ticket_info (optional)
        - required_conditional_access_authentication_context (optional)
    - active_assignment_rules (block):
        - expiration_required (optional)
        - expire_after (optional)
        - require_justification (optional)
        - require_multifactor_authentication (optional)
        - require_ticket_info (optional)
    - eligible_assignment_rules (block):
        - expiration_required (optional)
        - expire_after (optional)
    - notification_rules (block):
        - active_assignments (optional, block):
            - admin_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
            - approver_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
            - assignee_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
        - eligible_activations (optional, block):
            - admin_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
            - approver_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
            - assignee_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
        - eligible_assignments (optional, block):
            - admin_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
            - approver_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
            - assignee_notifications (optional, block):
                - additional_recipients (optional)
                - default_recipients (required)
                - notification_level (required)
EOT

  type = map(object({
    role_definition_id = string
    scope              = string
    activation_rules = optional(object({
      approval_stage = optional(object({
        primary_approver = object({
          object_id = string
          type      = string
        })
      }))
      maximum_duration                                   = optional(string)
      require_approval                                   = optional(bool)
      require_justification                              = optional(bool)
      require_multifactor_authentication                 = optional(bool)
      require_ticket_info                                = optional(bool)
      required_conditional_access_authentication_context = optional(string)
    }))
    active_assignment_rules = optional(object({
      expiration_required                = optional(bool)
      expire_after                       = optional(string)
      require_justification              = optional(bool)
      require_multifactor_authentication = optional(bool)
      require_ticket_info                = optional(bool)
    }))
    eligible_assignment_rules = optional(object({
      expiration_required = optional(bool)
      expire_after        = optional(string)
    }))
    notification_rules = optional(object({
      active_assignments = optional(object({
        admin_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
        approver_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
        assignee_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
      }))
      eligible_activations = optional(object({
        admin_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
        approver_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
        assignee_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
      }))
      eligible_assignments = optional(object({
        admin_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
        approver_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
        assignee_notifications = optional(object({
          additional_recipients = optional(set(string))
          default_recipients    = bool
          notification_level    = string
        }))
      }))
    }))
  }))
}

