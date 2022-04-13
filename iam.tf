
module "project_factory_project_services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "11.3.1"

  project_id = var.project_id

  activate_apis = var.activate_apis

  # Keep APIs activated when we destroy the project's resources
  disable_services_on_destroy = false
}
