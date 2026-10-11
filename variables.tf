variable "attribute_to_role_identity_provider_mappers" {
  description = <<EOT
Map of attribute_to_role_identity_provider_mappers, attributes below
Required:
    - identity_provider_alias
    - name
    - realm
    - role
Optional:
    - attribute_friendly_name
    - attribute_name
    - attribute_value
    - claim_name
    - claim_value
    - extra_config
EOT

  type = map(object({
    identity_provider_alias = string
    name                    = string
    realm                   = string
    role                    = string
    attribute_friendly_name = optional(string)
    attribute_name          = optional(string)
    attribute_value         = optional(string)
    claim_name              = optional(string)
    claim_value             = optional(string)
    extra_config            = optional(map(string))
  }))
}

