module "app_service_prod" {
    source = "./modules/"
    app_service_plan_name = var.plan_name
    app_service_name = var.service_name
    resource_group_name = var.resource_group_name
    resource_group_location = var.resource_group_location
}