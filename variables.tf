variable "config_entry_lookup" {
  description = <<EOT
Map of config_entry_lookup, attributes below
Required:
    - kind
    - name
Optional:
    - namespace
    - partition
EOT

  type = map(object({
    kind      = string
    name      = string
    namespace = optional(string)
    partition = optional(string)
  }))
}

