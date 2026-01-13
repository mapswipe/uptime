resource "uptimerobot_psp" "global" {
  name = "Status page"

  custom_settings = {
    page = {
      density = "normal"
      layout  = "logo_on_left"
      theme   = "light"
    }
  }

  monitor_ids = [0] # NOTE: Show all
}

resource "uptimerobot_psp" "mapswipe" {
  name = "MapSwipe - Uptime"

  # XXX: Once set, we can't use null for this attribute
  custom_domain = ""

  icon = "https://avatars.githubusercontent.com/u/16786834?s=200&v=4" # Existing uploaded
  logo = "https://avatars.githubusercontent.com/u/16786834?s=200&v=4" # Existing uploaded
  # homepage_link = "https://mapswipe.org/en/"

  custom_settings = {
    page = {
      density = "compact"
      layout  = "logo_on_left"
      theme   = "light"
    }
    colors : {
      main = "#0f193f"
    }
  }

  monitor_ids = [] # NOTE: From UI tag is selected. it's not available in terraform for now
}
