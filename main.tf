#-------------------------------
# Data Source Declarations
#-------------------------------

data "azuread_client_config" "main" {}

data "azurerm_subscription" "main" {}

locals {
  scopes = length(var.scopes) > 0 ? var.scopes : [data.azurerm_subscription.main.id]
}

#---------------------------------------------------------
# Service Principal Creation or selection
#----------------------------------------------------------

resource "azuread_application" "main" {
  display_name = lower(var.name)
  owners       = compact([data.azuread_client_config.main.object_id, var.owner_object_id])
}

resource "azuread_service_principal" "main" {
  application_id               = azuread_application.main.application_id
  app_role_assignment_required = true
  owners                       = compact([data.azuread_client_config.main.object_id, var.owner_object_id])
}

resource "time_rotating" "main" {
  rotation_days = 730
}

resource "azuread_service_principal_password" "main" {
  service_principal_id = azuread_service_principal.main.id
  rotate_when_changed = {
    rotation = time_rotating.main.id
  }
}

data "azurerm_role_definition" "main" {
  count = var.role != "" ? 1 : 0
  name  = var.role
}

resource "azurerm_role_assignment" "main" {
  count              = var.role != "" ? length(local.scopes) : 0
  scope              = local.scopes[count.index]
  role_definition_id = format("%s%s", data.azurerm_subscription.main.id, data.azurerm_role_definition.main[0].id)
  principal_id       = azuread_service_principal.main.id
}
