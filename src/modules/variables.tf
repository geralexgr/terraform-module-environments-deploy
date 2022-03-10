variable "app_service_plan_name" {
    type        = string
    description = "App Service Plan name in Azure"

}

variable "app_service_name" {
    type = string
    description = "Name for the app service"
}

variable "resource_group_name" {
    type        = string
    description = "RG name in Azure"
}

variable "resource_group_location" {
    type        = string
    description = "RG location in Azure"
}


variable "app_service_plan" {
    type        = map
    description = "App Service Tier and SKU"
    default = {
        tier = "Free"
        size = "F1"
    }
}