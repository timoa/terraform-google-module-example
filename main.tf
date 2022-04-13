locals {
  common_labels = merge(var.labels, {
    # Only lowercase keys allowed
    "project"     = var.namespace
    "environment" = var.stage
  })
}

#############################
# Available Zones
#############################

data "google_compute_zones" "available" {
  project = var.project_id
  region  = var.region
}
