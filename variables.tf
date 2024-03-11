# variable "domain" {
#   type        = string
#   description = "Domain suffix to be used to construct IAM groups"
# }

# variable "billing_id" {
#   type        = string
#   description = "Billing Account ex. 012345-678910-ABCDEF"
#   default = "01A06C-4B8346-56C9CF"
# }

# variable "folder_id" {
#   type        = string
#   description = "Get Folder ID of above folder"
# }

# variable "env_code" {
#   type        = string
#   description = "Environment code, e.g. d, t, p"
# }

# variable "services" {
#   type        = list(string)
#   description = "List of services (apis) to enable"
# }

variable "project_prefix" {
  type        = string
  description = "Project Prefix for all projects, e.g. prj-xxxxx"
  #default     = "prj"
    default = "marat-musaev-training"
}

variable "location" {
  type        = string
  description = "Location ex US or EU"
  default     = "US"
}

variable "storage_class" {
  type        = string
  description = "Storage type"
  default     = "STANDARD"
}

variable "storage_name" {
  type        = string
  description = "Storage name"
  default     = "my-bucket"
}