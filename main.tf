#-------------------------------
# Data Source Declarations
#-------------------------------

data "azuread_client_config" "main" {}

data "azurerm_subscription" "main" {}

#---------------------------------------------------------
# Service Principal Creation or selection
#----------------------------------------------------------

resource "azuread_application" "main" {
  display_name = lower(var.name)
  owners       = [data.azuread_client_config.main.object_id]
}

resource "azuread_service_principal" "main" {
  application_id               = azuread_application.main.application_id
  app_role_assignment_required = true
  owners                       = [data.azuread_client_config.main.object_id]
}
