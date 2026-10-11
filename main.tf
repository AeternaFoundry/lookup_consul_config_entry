data "consul_config_entry" "config_entry_lookup" {
  for_each = var.config_entry_lookup

  kind      = each.value.kind
  name      = each.value.name
  namespace = each.value.namespace
  partition = each.value.partition
}

