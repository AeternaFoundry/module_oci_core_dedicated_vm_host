variable "core_dedicated_vm_hosts" {
  description = <<EOT
Map of core_dedicated_vm_hosts, attributes below
Required:
    - availability_domain
    - compartment_id
    - dedicated_vm_host_shape
Optional:
    - capacity_config
    - defined_tags
    - display_name
    - fault_domain
    - freeform_tags
    - is_memory_encryption_enabled
    - placement_constraint_details (block):
        - compute_bare_metal_host_id (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    availability_domain          = string
    compartment_id               = string
    dedicated_vm_host_shape      = string
    capacity_config              = optional(string)
    defined_tags                 = optional(map(string))
    display_name                 = optional(string)
    fault_domain                 = optional(string)
    freeform_tags                = optional(map(string))
    is_memory_encryption_enabled = optional(bool)
    placement_constraint_details = optional(object({
      compute_bare_metal_host_id = optional(string)
      type                       = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_dedicated_vm_hosts : (
        v.placement_constraint_details == null || (contains([for v in ["COMPUTE_BARE_METAL_HOST"] : lower(v)], lower(v.placement_constraint_details.type)))
      )
    ])
    error_message = "must be one of: \"COMPUTE_BARE_METAL_HOST\""
  }
}

