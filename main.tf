provider "azurerm" {
  features {}
  disable_correlation_request_id = true
}

data "azurerm_resource_group" "RG_Creation" {
  name = var.resource_group_name
}

module "avm-res-avs-privatecloud" {
  source  = "Azure/avm-res-avs-privatecloud/azurerm"
  version = "0.8.2"

  enable_telemetry               = true
  resource_group_name            = data.azurerm_resource_group.RG_Creation.name
  location                       = data.azurerm_resource_group.RG_Creation.location
  resource_group_resource_id     = data.azurerm_resource_group.RG_Creation.id
  name                           = "${var.sddc_name}-${full}"
  sku_name                       = "av48"
  avs_network_cidr               = "10.0.0.0/22"
  internet_enabled               = true
  management_cluster_size        = 8

  clusters = {
    "Cluster-2" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-3" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-4" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-5" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-6" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-7" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-8" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-9" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-10" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-11" = {
      cluster_node_count = 8
      sku_name           = "av48"
    },
    "Cluster-12" = {
      cluster_node_count = 8
      sku_name           = "av48"
    }
  }
}
