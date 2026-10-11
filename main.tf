resource "keycloak_attribute_to_role_identity_provider_mapper" "attribute_to_role_identity_provider_mappers" {
  for_each = var.attribute_to_role_identity_provider_mappers

  identity_provider_alias = each.value.identity_provider_alias
  name                    = each.value.name
  realm                   = each.value.realm
  role                    = each.value.role
  attribute_friendly_name = each.value.attribute_friendly_name
  attribute_name          = each.value.attribute_name
  attribute_value         = each.value.attribute_value
  claim_name              = each.value.claim_name
  claim_value             = each.value.claim_value
  extra_config            = each.value.extra_config
}

