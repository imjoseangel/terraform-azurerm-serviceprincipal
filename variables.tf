variable "name" {
  type        = string
  description = "The name of the service principal."
}

variable "end_date" {
  type        = string
  default     = null
  description = "The relative duration or RFC3339 date after which the password expire."
}

variable "years" {
  type        = number
  default     = null
  description = "The number of years after which the password expire. Either this or `end_date` should be specified, but not both."
}

variable "role" {
  type        = string
  default     = ""
  description = "The name of a role for the service principal."
}

variable "scopes" {
  type        = list(string)
  default     = []
  description = "A list of scopes the role assignment applies to."
}

locals {
  scopes = length(var.scopes) > 0 ? var.scopes : [data.azurerm_subscription.main.id]
}
