#
# variables.tf 
#

variable "atlas_org_api_public_key" {
   default  = "xxxxnncsr"
}

variable "atlas_org_api_private_key" {
   default = "3bf51f06-xxxx-4301-xxxx-87fa902dxxx"

}
variable "atlas_org_id" {
  default = "5c5c939079358e2b051b9999"
}

# to use an existing project
variable "atlas_project_id" {
  default = "5bc52019ff7a25de65229999"
}

# to create a new project
variable "atlas_new_project_name" {
  default = "TF"
}

variable "atlas_cluster_name" {
  default = "TF-1"
}

variable "atlas_region" {
  default = "US_WEST_1"
}

variable "atlas_db_version" {
  default = "5.0"
}

variable "atlas_size" {
  default = "M20"
}

variable "atlas_disk" {
  default = 40
}

variable "atlas_database_username" {
  default = "dbAdminTF"
}

variable "atlas_database_user_password" {
  default = "Mongodb1"
}

variable "atlas_database_username2" {
  default = "appUserTF"
}

variable "atlas_database_user_password2" {
  default = "Mongodb1"
}

variable "atlas_whitelistip" {
  default = "50.213.10.27"
}


