variable "resource_group_name" {
  type        = string
  default     = "RG-SHAPE-DIGITAL-TESTE"
}

variable "resource_group_location" {
  type        = string
  default     = "Brazil South"
}

variable "service_plan_name" {
  type = string
  default = "service-plan-testeshape"
}

variable "app_service_name" {
  type = string
  default = "appservice-testeshape"
}

variable "storage_account_name" {
  type        = string
  default = "satesteshape"
}

variable "container_registry_name" {
  type        = string
  default = "acrtesteshape"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  default     = "LRS"
}

variable "tags" {
  type        = map(string)
  default     = {
    Created-by = "Jessica Milsted"
    }
}

variable "sku" {
  type    = string
  default = "Basic"
}

variable "size" {
  type    = string
  default = "F1"
}

variable "os_type" {
  type    = string
  default = "Linux"
}

variable "sku_name" {
  type    = string
  default = "P1v2"
}