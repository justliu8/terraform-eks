terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.38.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.26.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.12.1"
    }
  }

  backend "s3" {
    bucket = "terraform-state"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }
}

module "dev_cluster" {
  source        = "./modules/cluster"
  cluster_name  = "dev"
  instance_type = var.dev_instance_type
}

module "staging_cluster" {
  source        = "./modules/cluster"
  cluster_name  = "staging"
  instance_type = var.staging_instance_type
}

module "prod_cluster" {
  source        = "./modules/cluster"
  cluster_name  = "prod"
  instance_type = var.prod_instance_type
}