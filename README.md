# k-project2

GKE Cluster setup using terraform
------------

Simple Terraform project that creates a Google Kubernetes Engine cluster, deploys a wordpress pod, and exposes it to a load balancer.

The configuration of the app being deployed to the cluster as well as the load balancer configuration (port, docker image, number of replicas, etc) can be found in `deployment.tf`. The image name (in this case wordpress) is defined in `variables.tf`.

NOTE: The instance types used in this cluster are not free tier eligible.

#### Prerequisites

* Create a GCP Project, and enable the following services:
  `Kubernetes Engine API`
  `Compute Engine`

* Install GCloud SDK
  https://cloud.google.com/sdk/docs/quickstart

* Initialize GCloud SDK using command Below

  `gcloud auth application-default login`

* Install Terraform
  https://learn.hashicorp.com/tutorials/terraform/install-cli

#### Deployment

Clone this repo to your local machine.

Open the `variables.tf` file, and change the `default` attribute of variable `GCP_project_name` to the ID of the project created on the prerequisites section. (IT'S VERY IMPORTANT THAT YOU USE THE ID AND NOT THE PROJECT NAME)

Navigate to the repo's directory using terminal, and run:

    terraform init

Navigate to `providers.tf` and comment out the kubernetes-engine module (Lines 9 through 12).

    terraform apply

#### Output

The output of the terraform apply command logs the IP address of both the GKE cluster and the load balancer that talks directly to the wordpress app.
