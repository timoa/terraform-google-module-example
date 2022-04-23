<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.17.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_project_factory_project_services"></a> [project\_factory\_project\_services](#module\_project\_factory\_project\_services) | terraform-google-modules/project-factory/google//modules/project_services | 12.0.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_zones.available](https://registry.terraform.io/providers/hashicorp/google/4.17.0/docs/data-sources/compute_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP Project ID of the project to deploy to | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Project name that will be use to identifiy the resources | `string` | `"my-project"` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage/environment name to tag and suffix the infrastructure composants | `string` | `"dev"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the resources | `string` | `"US"` | no |
| <a name="input_region"></a> [region](#input\_region) | Default Region | `string` | `"us-east1"` | no |
| <a name="input_activate_apis"></a> [activate\_apis](#input\_activate\_apis) | Activate the GCP APIs | `list(string)` | <pre>[<br>  "compute.googleapis.com",<br>  "cloudresourcemanager.googleapis.com"<br>]</pre> | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Default labels to associate to these resources | `map(string)` | <pre>{<br>  "businessunit": "mycompany",<br>  "team": "devops",<br>  "terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_zones"></a> [available\_zones](#output\_available\_zones) | Return the list of available zones |
<!-- END_TF_DOCS -->
