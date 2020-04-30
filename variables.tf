#
# variables.tf 
#

variable "atlas_org_api_public_key" {
   default  = "XXXXXXXG"
}
variable "atlas_org_api_private_key" {
   default = "xx9a5xxb-e0fe-4bd9-9752-xxxxxxxxxx"
}
variable "atlas_org_id" {
  default = "xxx5c939079358e2b051xxxxx"
}

# to use an existing project
variable "atlas_project_id" {
  default = "xxxx66a6ff7a25d637xxxxxx"
}

# to create a new project
variable "atlas_new_project_name" {
  default = "TF"
}

variable "atlas_cluster_name" {
  default = "TF-1"
}

variable "atlas_region" {
  default = "WESTERN_US"
}

variable "atlas_db_version" {
  default = "4.0"
}

variable "atlas_size" {
  default = "M20"
}

variable "atlas_disk" {
  default = 40
}

variable "atlas_database_username" {
  default = "dbAdmin"
}

variable "atlas_database_user_password" {
  default = "mongodb1"
}

variable "atlas_database_username2" {
  default = "main_user"
}

variable "atlas_database_user_password2" {
  default = "main_user"
}

variable "atlas_whitelistip" {
  default = "99.199.99.199"
}


