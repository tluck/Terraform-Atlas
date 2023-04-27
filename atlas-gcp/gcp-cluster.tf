terraform {
  required_version = ">= 0.12"
}

#
# Configure the MongoDB Atlas Provider
#
# uncomment below to privide - or use environment variables
# export MONGODB_ATLAS_PUBLIC_KEY="xxxx"
# export MONGODB_ATLAS_PRIVATE_KEY="xxxx"

terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "1.8.2"
    }
  }
}

provider "mongodbatlas" {
    public_key                 = var.atlas_org_api_public_key
    private_key                = var.atlas_org_api_private_key
}

#
# Create a Project 
#
##resource "mongodbatlas_project" "new_project" {
##    name                        = var.atlas_new_project_name
##    org_id                      = var.atlas_org_id
##}

#
# Create a Cluster in 1 Regions
#
resource "mongodbatlas_cluster" "cluster" {
##project_id                    = mongodbatlas_project.new_project.id
  project_id                    = var.atlas_project_id
  name                          = var.atlas_cluster_name
  num_shards                    = 1
  replication_factor            = 3
  cloud_backup                  = true
  auto_scaling_disk_gb_enabled  = true
  version_release_system        = "CONTINUOUS"
  //mongo_db_major_version        = var.atlas_db_version

  //Provider Settings "block"
  provider_name                 = "GCP"
  provider_region_name          = var.atlas_region
  provider_instance_size_name   = var.atlas_size 
  disk_size_gb                  = var.atlas_disk
}

#
# Create a Database User1
#
resource "mongodbatlas_database_user" "user1" {
  username                      = var.atlas_database_username
  password                      = var.atlas_database_user_password
##project_id                    = mongodbatlas_project.new_project.id
  project_id                    = var.atlas_project_id
  auth_database_name            = "admin"

  roles {
    role_name                   = "atlasAdmin"
    database_name               = "admin"
  }
}

#
# Create a Database User2
#
resource "mongodbatlas_database_user" "user2" {
  username                      = var.atlas_database_username2
  password                      = var.atlas_database_user_password2
##project_id                    = mongodbatlas_project.new_project.id
  project_id                    = var.atlas_project_id
  auth_database_name            = "admin"

  roles {
    role_name                   = "readWriteAnyDatabase"
    database_name               = "admin"
  }
}

#
# Create an IP Access List
#

resource "mongodbatlas_project_ip_access_list" "cluster" {
##project_id                    = mongodbatlas_project.new_project.id
  project_id                    = var.atlas_project_id
  ip_address                    = var.atlas_access_listip
  comment                       = "Access List Entry for Terraform Demo"
}
