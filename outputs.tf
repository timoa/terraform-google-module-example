output "available_zones" {
  description = "Return the list of available zones"
  value       = data.google_compute_zones.available.names
}
