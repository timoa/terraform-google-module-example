# Terraform Module GCP example

[![Latest Release][release-badge]][release-url]
[![Build Status][github-badge]][github-url]
[![License][license-badge]][license-url]

A Terraform module uses as a template to start new module.

It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp.

* [Pre-commit][pre-commit-url]: enforce checks on the module before commit
* [Semantic Release][semantic-release-url]: automate the release and version process
* [Renovate][renovate-url]: automate the dependency management (update provider version, etc.)
* [ShiftLeft SCAN][shiftleft-scan-url]: security audit tool to detect security flaws in application and infrastructure code

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
  source = "git::https://github.com/timoa/terraform-module-gcp-example.git?ref=tags/0.0.2"

  # Required
  project_id = "my-project-id"

  # Optional
  namespace = "my-project"
  stage     = "prod"
  region    = "us-east1"
}
```

### Output example

```bash
terraform init
terraform plan
```

```bash
Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.project_factory_project_services.google_project_service.project_services["cloudresourcemanager.googleapis.com"] will be created
  + resource "google_project_service" "project_services" {
      + disable_dependent_services = true
      + disable_on_destroy         = false
      + id                         = (known after apply)
      + project                    = "my-project-id"
      + service                    = "cloudresourcemanager.googleapis.com"
    }

  # module.project_factory_project_services.google_project_service.project_services["compute.googleapis.com"] will be created
  + resource "google_project_service" "project_services" {
      + disable_dependent_services = true
      + disable_on_destroy         = false
      + id                         = (known after apply)
      + project                    = "my-project-id"
      + service                    = "compute.googleapis.com"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + available_zones = [
      + "us-east1-b",
      + "us-east1-c",
      + "us-east1-d",
    ]
```

[github-badge]: https://github.com/timoa/terraform-module-gcp-example/workflows/Terraform/badge.svg
[github-url]: https://github.com/timoa/terraform-module-gcp-example/actions?query=workflow%3ATerraform
[release-badge]: https://img.shields.io/github/release/timoa/terraform-module-gcp-example.svg
[release-url]: https://github.com/timoa/terraform-module-gcp-example/releases/latest
[license-badge]: https://img.shields.io/github/license/timoa/terraform-module-gcp-example.svg
[license-url]: https://github.com/timoa/terraform-module-gcp-example/blob/main/LICENSE
[pre-commit-url]: https://pre-commit.com/
[semantic-release-url]: https://semantic-release.gitbook.io/semantic-release/
[renovate-url]: https://www.whitesourcesoftware.com/free-developer-tools/renovate/
[shiftleft-scan-url]: https://shiftleft.io/docs/scan/
