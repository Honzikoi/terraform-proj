variable "instance_name" {
  type        = string
  description = "The name of the instance"
  default     = "terraforming-google-cloud"
}

variable "region" {
  type        = string
  description = "The GCP region String of the VM instance"
  default     = "europe-west3-b"
}

variable "service_account" {
  default = null
  type = object({
    email = string
    scope = set(string)
  })
  description = "The service account to attach to the instance. (not used, dunno what this is)"
}

variable "tags" {
  type        = list(string)
  description = "The list of tags to attach to the instance"
  default     = ["test", "dev", "project"]
}

# variable "labels" {
#   type        = map(string)
#   description = "The map of labels to attach to the instance"
# }

variable "machine_type" {
  type        = string
  description = "The machine type to use for the instance (small one : 4$ per month)"
  default     = "e2-micro"
}


# variable "enable_nested_virtualization" {
#     type = bool
#     description = "Enable nested virtualization for the instance"
#     default = false
# }

# variable "disk_size" {
#     type = number
#     description = "The size of the boot disk in GB"
#     default = 10
# }

# variable "threads_per_core" {
#     type = number
#     description = "The number of threads per core for the instance"
#     default = 1
# }
