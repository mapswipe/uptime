# MapSwipe Website - Prod
module "monitor_mapswipe_website_prod" {
  source = "./modules/http_monitor"

  name = "MapSwipe Website - Prod"
  url  = "https://mapswipe.org"
  tags = [
    "mapswipe",
    "prod",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Website - Stage
module "monitor_mapswipe_website_stage" {
  source = "./modules/http_monitor"

  name = "MapSwipe Website - Stage"
  url  = "https://website-stage.mapswipe.org"
  tags = [
    "mapswipe",
    "stage",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Manager Dashboard - Prod
module "monitor_manager_dashboard_prod" {
  source = "./modules/http_monitor"

  name = "MapSwipe Manager Dashboard - Prod"
  url  = "https://managers.mapswipe.org"
  tags = [
    "mapswipe",
    "prod",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Manager Dashboard - Stage
module "monitor_manager_dashboard_stage" {
  source = "./modules/http_monitor"

  name = "MapSwipe Manager Dashboard - Stage"
  url  = "https://managers-stage.mapswipe.org/"
  tags = [
    "mapswipe",
    "stage",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Backend - Prod
module "monitor_backend_prod" {
  source = "./modules/http_monitor"

  name = "MapSwipe Backend - Prod"
  url  = "https://backend.mapswipe.org/health-check/"
  tags = [
    "mapswipe",
    "prod",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Backend - Stage
module "monitor_backend_stage" {
  source = "./modules/http_monitor"

  name = "MapSwipe Backend - Stage"
  url  = "https://backend-stage.mapswipe.org/health-check/"
  tags = [
    "mapswipe",
    "stage",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Community Dashboard - Prod
module "monitor_community_dashboard_prod" {
  source = "./modules/http_monitor"

  name = "MapSwipe Community Dashboard - Prod"
  url  = "https://community.mapswipe.org"
  tags = [
    "mapswipe",
    "prod",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Community Dashboard - Stage
module "monitor_community_dashboard_stage" {
  source = "./modules/http_monitor"

  name = "MapSwipe Community Dashboard - Stage"
  url  = "https://community-stage.mapswipe.org/"
  tags = [
    "mapswipe",
    "stage",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Web - Prod
module "monitor_mapswipe_web_prod" {
  source = "./modules/http_monitor"

  name = "MapSwipe Web App - Prod"
  url  = "https://web.mapswipe.org"
  tags = [
    "mapswipe",
    "prod",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}

# MapSwipe Web - Stage
module "monitor_mapswipe_web_stage" {
  source = "./modules/http_monitor"

  name = "MapSwipe Web App - Staging"
  url  = "https://web.mapswipe.org/dev"
  tags = [
    "mapswipe",
    "stage",
  ]
  assigned_alert_contacts = [
    uptimerobot_integration.mapswipe_uptime_alerts.id,
  ]
}
