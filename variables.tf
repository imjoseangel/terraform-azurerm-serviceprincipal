variable "name" {
  type        = string
  description = "The name of the service principal."
}

variable "owner_object_id" {
  type        = string
  description = "The owner object id of the service principal."
  default     = ""
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
