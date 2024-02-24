# Terraform EKS Example Setup
Provisions Kubernetes clusters on AWS EKS (Elastic Kubernetes Service) using Terraform.
Automates creating three clusters (dev, staging, prod) with an aws-load-balancer-controller controller.
Also applies a LoadBalancer and Ingress manifest to the cluster.

First run `terraform init` to download provider plugins and initialize the Terraform environment.

Run `terraform fmt` to automatically apply style conventions to the written configuration files.

Run `terraform validate` to check for any configuration errors in the current directory. You can run this command to find syntax errors, and to check for consistency between modules.

`terraform plan` uses an implied validation check and also performs checks on any input variables and any remote services such as remote state, provider APIs, etc. It shows which resources will be created, replaced, changed, or destroyed to match the requested configuration.

`terraform apply` will begin to provision the required resources and create the given infrastructure configuration based on the given plan.

`terraform destroy` will destroy all of the infrastructure managed by the configuration.

You can find the kubeconfig file in the respective folder for each cluster.