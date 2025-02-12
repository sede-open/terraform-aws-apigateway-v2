module "wrapper" {
  source = "../"

  for_each = var.items

  api_key_selection_expression                       = try(each.value.api_key_selection_expression, var.defaults.api_key_selection_expression, "$request.header.x-api-key")
  api_version                                        = try(each.value.api_version, var.defaults.api_version, null)
  authorizers                                        = try(each.value.authorizers, var.defaults.authorizers, {})
  body                                               = try(each.value.body, var.defaults.body, null)
  cors_configuration                                 = try(each.value.cors_configuration, var.defaults.cors_configuration, {})
  create                                             = try(each.value.create, var.defaults.create, true)
  create_api_domain_name                             = try(each.value.create_api_domain_name, var.defaults.create_api_domain_name, true)
  create_api_gateway                                 = try(each.value.create_api_gateway, var.defaults.create_api_gateway, true)
  create_default_stage                               = try(each.value.create_default_stage, var.defaults.create_default_stage, true)
  create_default_stage_api_mapping                   = try(each.value.create_default_stage_api_mapping, var.defaults.create_default_stage_api_mapping, true)
  create_routes_and_integrations                     = try(each.value.create_routes_and_integrations, var.defaults.create_routes_and_integrations, true)
  create_vpc_link                                    = try(each.value.create_vpc_link, var.defaults.create_vpc_link, true)
  credentials_arn                                    = try(each.value.credentials_arn, var.defaults.credentials_arn, null)
  default_route_settings                             = try(each.value.default_route_settings, var.defaults.default_route_settings, {})
  default_stage_access_log_destination_arn           = try(each.value.default_stage_access_log_destination_arn, var.defaults.default_stage_access_log_destination_arn, null)
  default_stage_access_log_format                    = try(each.value.default_stage_access_log_format, var.defaults.default_stage_access_log_format, null)
  default_stage_tags                                 = try(each.value.default_stage_tags, var.defaults.default_stage_tags, {})
  description                                        = try(each.value.description, var.defaults.description, null)
  disable_execute_api_endpoint                       = try(each.value.disable_execute_api_endpoint, var.defaults.disable_execute_api_endpoint, false)
  domain_name                                        = try(each.value.domain_name, var.defaults.domain_name, null)
  domain_name_certificate_arn                        = try(each.value.domain_name_certificate_arn, var.defaults.domain_name_certificate_arn, null)
  domain_name_ownership_verification_certificate_arn = try(each.value.domain_name_ownership_verification_certificate_arn, var.defaults.domain_name_ownership_verification_certificate_arn, null)
  domain_name_tags                                   = try(each.value.domain_name_tags, var.defaults.domain_name_tags, {})
  fail_on_warnings                                   = try(each.value.fail_on_warnings, var.defaults.fail_on_warnings, false)
  integrations                                       = try(each.value.integrations, var.defaults.integrations, {})
  mutual_tls_authentication                          = try(each.value.mutual_tls_authentication, var.defaults.mutual_tls_authentication, {})
  name                                               = try(each.value.name, var.defaults.name, "")
  protocol_type                                      = try(each.value.protocol_type, var.defaults.protocol_type, "HTTP")
  route_key                                          = try(each.value.route_key, var.defaults.route_key, null)
  route_selection_expression                         = try(each.value.route_selection_expression, var.defaults.route_selection_expression, "$request.method $request.path")
  tags                                               = try(each.value.tags, var.defaults.tags, {})
  target                                             = try(each.value.target, var.defaults.target, null)
  vpc_link_tags                                      = try(each.value.vpc_link_tags, var.defaults.vpc_link_tags, {})
  vpc_links                                          = try(each.value.vpc_links, var.defaults.vpc_links, {})
}
