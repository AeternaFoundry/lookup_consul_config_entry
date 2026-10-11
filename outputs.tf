output "config_entry_lookup_id" {
  description = "Map of id values across all config_entry_lookup, keyed the same as var.config_entry_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_config_entry.config_entry_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_entry_lookup_config_json" {
  description = "Map of config_json values across all config_entry_lookup, keyed the same as var.config_entry_lookup except keys with no config_json are omitted"
  value       = { for k, v in data.consul_config_entry.config_entry_lookup : k => v.config_json if v.config_json != null && length(v.config_json) > 0 }
}
output "config_entry_lookup_kind" {
  description = "Map of kind values across all config_entry_lookup, keyed the same as var.config_entry_lookup except keys with no kind are omitted"
  value       = { for k, v in data.consul_config_entry.config_entry_lookup : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "config_entry_lookup_name" {
  description = "Map of name values across all config_entry_lookup, keyed the same as var.config_entry_lookup except keys with no name are omitted"
  value       = { for k, v in data.consul_config_entry.config_entry_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_entry_lookup_namespace" {
  description = "Map of namespace values across all config_entry_lookup, keyed the same as var.config_entry_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.consul_config_entry.config_entry_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "config_entry_lookup_partition" {
  description = "Map of partition values across all config_entry_lookup, keyed the same as var.config_entry_lookup except keys with no partition are omitted"
  value       = { for k, v in data.consul_config_entry.config_entry_lookup : k => v.partition if v.partition != null && length(v.partition) > 0 }
}

