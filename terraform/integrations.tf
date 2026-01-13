# https://registry.terraform.io/providers/uptimerobot/uptimerobot/latest/docs/resources/integration

resource "uptimerobot_integration" "mapswipe_uptime_alerts" {
  name                     = "mapswipe-uptime-alerts"
  type                     = "slack"
  value                    = var.mapswipe_uptime_alerts_webhook
  enable_notifications_for = 1 # All notifications
  ssl_expiration_reminder  = true
}
