# Terraform Module GCP Template

A Terraform module uses as a template to start new module.

It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp.

## Usage

### GCP Authentication

```bash
gcloud auth application-default login
```

### Activate GCP APIs

Go to the [Google Cloud Platform Console](https://console.cloud.google.com/apis/library) and activate the following APIs:

* compute.googleapis.com

### Integrate the module into your Terraform project

If you want to use this module inside your project, you can use the following code (change the tag to match the latest version):

```bash
module "module-template" {
  source = "git::https://github.com/timoa/terraform-module-template.git?ref=tags/0.0.2"

  # Required
  project_id = "my-project-id"

  # Optional
  namespace = "my-project"
  stage     = "prod"
  region    = "us-east1"
}
```

## Output example

```bash
terraform init
terraform plan
```

```bash
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.project_factory_project_services.google_project_service.project_services["compute.googleapis.com"] will be created
  + resource "google_project_service" "project_services" {
      + disable_dependent_services = true
      + disable_on_destroy         = false
      + id                         = (known after apply)
      + project                    = "my-project-id"
      + service                    = "compute.googleapis.com"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + available_zones = [
      + "us-east1-b",
      + "us-east1-c",
      + "us-east1-d",
    ]
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.17.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_project_factory_project_services"></a> [project\_factory\_project\_services](#module\_project\_factory\_project\_services) | terraform-google-modules/project-factory/google//modules/project_services | 11.3.1 |

## Resources

| Name | Type |
|------|------|
| [google_compute_zones.available](https://registry.terraform.io/providers/hashicorp/google/4.17.0/docs/data-sources/compute_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_activate_apis"></a> [activate\_apis](#input\_activate\_apis) | Activate the GCP APIs | `list(string)` | <pre>[<br>  "compute.googleapis.com"<br>]</pre> | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Default labels to associate to these resources | `map(string)` | <pre>{<br>  "businessunit": "mycompany",<br>  "team": "devops",<br>  "terraform": "true"<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the resources | `string` | `"US"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Project name that will be use to identifiy the resources | `string` | `"my-project"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP Project ID of the project to deploy to | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Default Region | `string` | `"us-east1"` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage/environment name to tag and suffix the infrastructure composants | `string` | `"dev"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_zones"></a> [available\_zones](#output\_available\_zones) | Return the list of available zones |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
