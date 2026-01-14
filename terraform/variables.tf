# Uptimerobot
variable "uptimerobot_api_key" {
  description = "UptimeRobot API key"
  type        = string
  sensitive   = true
}

# Integration
variable "mapswipe_uptime_alerts_webhook" {
  type      = string
  sensitive = true
}
