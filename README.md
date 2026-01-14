# Mapswipe Uptime

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
