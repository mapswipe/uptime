# Mapswipe Uptime

## Creating Uptime Monitors
- Use existing monitors from `terraform/monitors.tf` file as example
- Edit as needed and save it

### Example
Please follow this example
```tf
# MapSwipe Website
module "monitor_mapswipe_website" {
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
```

**Guidelines:**
- Add a comment to separate out the application blocks
- Rename module to match: `monitor_{platform}`
- Update name and URL
    - Name must end with `Prod` or `Staging`
- Tags should include project and environment
    - Make sure to use `prod` and `staging` to specify environments
- `assigned_alert_contacts` must include:
    - 1 Slack channel

## CI Setup

### Init (Service Account)
> [!CAUTION]
> Replace current gcloud auth with `Workload Identity Federation`
> https://github.com/mapswipe/uptime/issues/2

> [!NOTE]
> We used mapswipe production project id

Create service account (if not exists)
```bash
gcloud iam service-accounts create "github-uptime-account" --project "project-id-not-number"
```

Create service account credential (if not exists)
```bash
gcloud iam service-accounts keys create "key.json" --iam-account "github-uptime-account@project-id-not-number.iam.gserviceaccount.com"
```
> [!NOTE]
> Replace github action secrets `GOOGLE_CREDENTIALS` with the provided values from `key.json`

> [!CAUTION]
> Make sure to remove the file `key.json`

Provide bucket access to the service account
```bash
gcloud storage buckets add-iam-policy-binding \
    gs://mapswipe-uptime-tf-prod \
    --member="github-uptime-account@project-id-not-number.iam.gserviceaccount.com" \
    --role="roles/storage.objectAdmin"
```
