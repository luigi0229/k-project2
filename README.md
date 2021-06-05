# k-project2

GKE Cluster setup using terraform
------------

Simple Terraform project that creates a Google Kubernetes Engine cluster, deploys a wordpress pod, and exposes it to a load balancer.

#### Prerequisites

* Create a GCP Project, and enable the following services:
  `Kubernetes Engine`
  `Compute Engine`

* Install GCloud SDK
  https://cloud.google.com/sdk/docs/quickstart

* Initialize GCloud SDK using command Below

  `gcloud auth application-default login`

* Install Terraform
  https://learn.hashicorp.com/tutorials/terraform/install-cli

#### Deployment

Clone this repo to your local machine.

Open the `variables.tf` file, and change the default attribute of variable GCP_project_name to the name of the project created on the prerequisites section.

Navigate to the repo's directory using terminal, and run:

    `terraform apply`

#### Output

The output of the terraform apply command logs the IP address of both the GKE cluster and the load balancer that talks directly to the wordpress app.
