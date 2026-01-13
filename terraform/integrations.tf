# https://registry.terraform.io/providers/uptimerobot/uptimerobot/latest/docs/resources/integration

# 6889267 (Internal)
resource "uptimerobot_integration" "mapswipe_uptime_alerts" {
  name                     = "mapswipe-uptime-alerts"
  type                     = "slack"
  value                    = var.mapswipe_uptime_alerts_webhook
  enable_notifications_for = 1 # All notifications
  ssl_expiration_reminder  = true
}


# 6889265 (External)
resource "uptimerobot_integration" "mapswipe_uptime_external_alerts" {
  name                     = "mapswipe-uptime-external-alerts"
  type                     = "slack"
  value                    = var.mapswipe_uptime_external_alerts_webhook
  enable_notifications_for = 1 # All notifications
  ssl_expiration_reminder  = true
}

locals {
  #  keyur_iphone_id = 7153224
}
