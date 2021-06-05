# k-project2

GKE Cluster setup using terraform
------------

Simple Terraform project that creates a Google Kubernetes Engine cluster, deploys a wordpress pod, and exposes it to a load balancer.

#### Prerequisites

* Install GCloud SDK
  https://cloud.google.com/sdk/docs/quickstart

* Initialize GCloud SDK using command Below
  gcloud auth application-default login

* Install Terraform
  https://learn.hashicorp.com/tutorials/terraform/install-cli

#### Deployment

Clone this repo to your local machine.
Navigate to the repo's directory using terminal, and run:
    terraform apply

#### Output

The output of the terraform apply command logs the IP address of both the GKE cluster and the load balancer that talks directly to the wordpress app.
