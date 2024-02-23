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