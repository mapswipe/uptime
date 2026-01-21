resource "uptimerobot_psp" "global" {
  name          = "MapSwipe - Uptime"
  custom_domain = "status.mapswipe.org"

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

  monitor_ids = [0] # NOTE: Show all
}
