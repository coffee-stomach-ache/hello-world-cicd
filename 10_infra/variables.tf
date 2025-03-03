# ---------------------------------------------
# Variables
# ---------------------------------------------
variable "project" {
  type    = string
  default = "hirotatastylog"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "username" {
  type      = string
  default   = "admin"
  sensitive = true
}

variable "password" {
  type      = string
  sensitive = true
}