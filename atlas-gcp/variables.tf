#
# variables.tf 
#

variable "atlas_org_api_public_key" {
  default  = "xxxxyyyy"
}

variable "atlas_org_api_private_key" {
  default = "3bf51f06-c92a-4301-92f6-XXXXYYYYZZZZ"

}
variable "atlas_org_id" {
  default = "5c5c939079358e2b051bc839"
}

# to use an existing project
variable "atlas_project_id" {
  default = "5bc52019ff7a25deXXXXYYYY"
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
  default = "6.0"
}

variable "atlas_size" {
  default = "M10"
}

variable "atlas_disk" {
  default = 20
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

variable "atlas_access_listip" {
  default = "67.188.49.195"
}


