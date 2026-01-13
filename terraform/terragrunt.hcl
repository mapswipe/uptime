# Generate provider configuration AND required_providers block
locals {
  uptimerobot_provider_contents = <<EOF
terraform {
  required_version = ">= 1.11.0"

  required_providers {
    uptimerobot = {
      source  = "uptimerobot/uptimerobot"
      version = "~> 1.3.9"
    }
  }
}
EOF
}

# TODO: Check if we automate this to each module?
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = local.uptimerobot_provider_contents
}

generate "provider-module-cron" {
  path      = "modules/cron_monitor/provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = local.uptimerobot_provider_contents
}

generate "provider-module-http" {
  path      = "modules/http_monitor/provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = local.uptimerobot_provider_contents
}
