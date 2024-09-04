# main.tf
module "vpc" {
  source = "./modules/vpc"
}

module "google-ke" {
  source = "./modules/google-ke"
  project_id = var.project_id
}

module "iam" {
  source = "./modules/iam"
}

module "kubernetes" { 
  source = "./modules/kubernetes"
  image = "availability-api"
  location = "us-east4-c"
  cluster_name = "shortlet-cluster"
}

module "nat-gateway" {
  source = "./modules/nat-gateway"
}


