#-------------------------------
# Data Source Declarations
#-------------------------------

data "azurerm_client_config" "main" {}

data "azurerm_role_definition" "main" {
  count = var.role != "" ? 1 : 0
  name  = var.role
}

data "azurerm_subscription" "main" {}

#---------------------------------------------------------
# Service Principal Creation or selection
#----------------------------------------------------------
resource "random_uuid" "unique" {
}

resource "azuread_application" "main" {
  display_name = format("sp-%s-%s", lower(replace(var.name, "/[[:^alnum:]]/", "")), random_uuid.unique.result)
  identifier_uris = [
    format("https://youforce.onmicrosoft.com/%s", random_uuid.unique.result)
  ]
}

resource "azuread_service_principal" "main" {
  application_id = azuread_application.main.application_id
}

resource "time_rotating" "main" {
  rotation_days = 720
}

resource "azuread_service_principal_password" "main" {
  count                = var.password != null ? 1 : 0
  service_principal_id = azuread_service_principal.main.id
  rotate_when_changed = {
    rotation = time_rotating.main.id
  }
}

resource "azurerm_role_assignment" "main" {
  count              = var.role != "" ? length(local.scopes) : 0
  scope              = local.scopes[count.index]
  role_definition_id = format("%s%s", data.azurerm_subscription.main.id, data.azurerm_role_definition.main[0].id)
  principal_id       = azuread_service_principal.main.id
}
