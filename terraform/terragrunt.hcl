# Generate provider configuration AND required_providers block
locals {
  # https://registry.terraform.io/providers/uptimerobot/uptimerobot/
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

remote_state {
  backend = "gcs"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }

  config = {
    project  = "msf-mapswipe"
    location = "eu"
    bucket   = "mapswipe-uptime-tf-prod"
    prefix   = "${path_relative_to_include()}/tofu.tfstate"

    gcs_bucket_labels = {
      owner = "terragrunt"
      name  = "tf_state_storage"
    }
  }
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
