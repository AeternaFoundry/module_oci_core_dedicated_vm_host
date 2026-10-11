resource "oci_core_dedicated_vm_host" "core_dedicated_vm_hosts" {
  for_each = var.core_dedicated_vm_hosts

  availability_domain          = each.value.availability_domain
  compartment_id               = each.value.compartment_id
  dedicated_vm_host_shape      = each.value.dedicated_vm_host_shape
  capacity_config              = each.value.capacity_config
  defined_tags                 = each.value.defined_tags
  display_name                 = each.value.display_name
  fault_domain                 = each.value.fault_domain
  freeform_tags                = each.value.freeform_tags
  is_memory_encryption_enabled = each.value.is_memory_encryption_enabled

  dynamic "placement_constraint_details" {
    for_each = each.value.placement_constraint_details != null ? [each.value.placement_constraint_details] : []
    content {
      compute_bare_metal_host_id = placement_constraint_details.value.compute_bare_metal_host_id
      type                       = placement_constraint_details.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

