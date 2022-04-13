#############################
# Global
#############################

variable "project_id" {
  type        = string
  description = "The GCP Project ID of the project to deploy to"
}

variable "namespace" {
  type        = string
  description = "Project name that will be use to identifiy the resources"
  default     = "myproject"
}

variable "stage" {
  type        = string
  description = "Stage/environment name to tag and suffix the infrastructure composants"
  default     = "dev"
}

#############################
# Location
#############################

variable "location" {
  type        = string
  description = "Location of the resources"
  default     = "US"
}

variable "region" {
  type        = string
  description = "Default Region"
  default     = "us-east1"
}

#############################
# Labels
#############################

variable "labels" {
  type        = map(string)
  description = "Default labels to associate to these resources"
  default = {
    # Only lowercase keys allowed
    businessunit = "mycompany"
    team         = "devops"
    terraform    = "true"
  }
}
