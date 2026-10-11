output "core_dedicated_vm_hosts_id" {
  description = "Map of id values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no id are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_dedicated_vm_hosts_availability_domain" {
  description = "Map of availability_domain values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no availability_domain are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "core_dedicated_vm_hosts_capacity_bins" {
  description = "Map of capacity_bins values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no capacity_bins are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.capacity_bins if v.capacity_bins != null && length(v.capacity_bins) > 0 }
}
output "core_dedicated_vm_hosts_capacity_config" {
  description = "Map of capacity_config values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no capacity_config are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.capacity_config if v.capacity_config != null && length(v.capacity_config) > 0 }
}
output "core_dedicated_vm_hosts_compartment_id" {
  description = "Map of compartment_id values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_dedicated_vm_hosts_compute_bare_metal_host_id" {
  description = "Map of compute_bare_metal_host_id values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no compute_bare_metal_host_id are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.compute_bare_metal_host_id if v.compute_bare_metal_host_id != null && length(v.compute_bare_metal_host_id) > 0 }
}
output "core_dedicated_vm_hosts_dedicated_vm_host_shape" {
  description = "Map of dedicated_vm_host_shape values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no dedicated_vm_host_shape are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.dedicated_vm_host_shape if v.dedicated_vm_host_shape != null && length(v.dedicated_vm_host_shape) > 0 }
}
output "core_dedicated_vm_hosts_defined_tags" {
  description = "Map of defined_tags values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_dedicated_vm_hosts_display_name" {
  description = "Map of display_name values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no display_name are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_dedicated_vm_hosts_fault_domain" {
  description = "Map of fault_domain values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no fault_domain are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.fault_domain if v.fault_domain != null && length(v.fault_domain) > 0 }
}
output "core_dedicated_vm_hosts_freeform_tags" {
  description = "Map of freeform_tags values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_dedicated_vm_hosts_is_memory_encryption_enabled" {
  description = "Map of is_memory_encryption_enabled values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no is_memory_encryption_enabled are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.is_memory_encryption_enabled if v.is_memory_encryption_enabled != null }
}
output "core_dedicated_vm_hosts_placement_constraint_details" {
  description = "Map of placement_constraint_details values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no placement_constraint_details are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => one(v.placement_constraint_details) if v.placement_constraint_details != null && length(v.placement_constraint_details) > 0 }
}
output "core_dedicated_vm_hosts_remaining_local_volume_in_gbs" {
  description = "Map of remaining_local_volume_in_gbs values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no remaining_local_volume_in_gbs are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.remaining_local_volume_in_gbs if v.remaining_local_volume_in_gbs != null }
}
output "core_dedicated_vm_hosts_remaining_memory_in_gbs" {
  description = "Map of remaining_memory_in_gbs values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no remaining_memory_in_gbs are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.remaining_memory_in_gbs if v.remaining_memory_in_gbs != null }
}
output "core_dedicated_vm_hosts_remaining_ocpus" {
  description = "Map of remaining_ocpus values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no remaining_ocpus are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.remaining_ocpus if v.remaining_ocpus != null }
}
output "core_dedicated_vm_hosts_state" {
  description = "Map of state values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no state are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_dedicated_vm_hosts_time_created" {
  description = "Map of time_created values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no time_created are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_dedicated_vm_hosts_total_local_volume_in_gbs" {
  description = "Map of total_local_volume_in_gbs values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no total_local_volume_in_gbs are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.total_local_volume_in_gbs if v.total_local_volume_in_gbs != null }
}
output "core_dedicated_vm_hosts_total_memory_in_gbs" {
  description = "Map of total_memory_in_gbs values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no total_memory_in_gbs are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.total_memory_in_gbs if v.total_memory_in_gbs != null }
}
output "core_dedicated_vm_hosts_total_ocpus" {
  description = "Map of total_ocpus values across all core_dedicated_vm_hosts, keyed the same as var.core_dedicated_vm_hosts except keys with no total_ocpus are omitted"
  value       = { for k, v in oci_core_dedicated_vm_host.core_dedicated_vm_hosts : k => v.total_ocpus if v.total_ocpus != null }
}

