# ---------------------------------------------
# Variables
# ---------------------------------------------
variable "project" {
  type    = string
  default = "hirota-tastylog"
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