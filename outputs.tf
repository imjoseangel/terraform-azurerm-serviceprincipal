output "name" {
  value       = azuread_service_principal.main.display_name
  description = "The display name of the Azure AD application."
}

output "application_id" {
  value       = azuread_application.main.application_id
  description = "The client (application) ID of the service principal."
}

output "client_id" {
  value       = azuread_application.main.application_id
  description = "Echoes the `application_id` output value, for convenience if passing the result of this module elsewhere as an object."
}

output "object_id" {
  value       = azuread_service_principal.main.id
  description = "The Object ID of the service principal."
}

output "client_secret" {
  value       = azuread_service_principal_password.main.value
  sensitive   = true
  description = "Echoes the `password` output value, for convenience if passing the result of this module elsewhere as an object."
}
