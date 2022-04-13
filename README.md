# Terraform Module GCP Template

A Terraform module uses as a template to start new module.

It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.16.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_labels"></a> [labels](#input\_labels) | Default labels to associate to these resources | `map(string)` | <pre>{<br>  "businessunit": "mycompany",<br>  "team": "devops",<br>  "terraform": "true"<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the resources | `string` | `"US"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Project name that will be use to identifiy the resources | `string` | `"myproject"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP Project ID of the project to deploy to | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Default Region | `string` | `"us-east1"` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage/environment name to tag and suffix the infrastructure composants | `string` | `"dev"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
