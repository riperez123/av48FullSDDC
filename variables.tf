# vmware_private_cloud/variables.tf
variable "sddc_name" {
  description = "The name of the SDDC"
  type        = string
  default     = "sddcname"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rgname"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "regionofchoice"
}

variable "mgmt_cidr" {
  description = "The management network CIDR"
  type        = string
  default     = "10.0.0.0/22"
}
