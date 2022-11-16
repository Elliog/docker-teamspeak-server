resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}

resource "azurerm_container_group" "containergroup" {
  name                = var.container_group_name
  location            = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  os_type             = "Linux"
  restart_policy      = "OnFailure"

  container {
    name                  = var.container_name
    image                 = var.image_name
    cpu                   = var.cpu_core_number
    memory                = var.memory_size
    environment_variables = { "TS3SERVER_LICENSE" = "accept" }

    ports {
      port     = var.port_number-1
      protocol = "TCP"
    }
    ports {
      port     = var.port_number-2
      protocol = "UDP"
    }
    ports {
      port     = var.port_number-3
      protocol = "TCP"
    }
    ports {
      port     = var.port_number-4
      protocol = "TCP"
    }
  }
}
