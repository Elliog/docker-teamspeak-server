variable "resource_group_location" {
  default     = "francecentral"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "teamspeak"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "container_group_name" {
  default     = "ts1"
  description = "Name of container group instance."
}

variable "container_name" {
  default     = "ts1"
  description = "Name of container instance."
}

variable "image_name" {
  default     = "teamspeak"
  description = "Name of image docker."
}

variable "cpu_core_number" {
  default     = "1"
  description = "Number of cpu core."
}

variable "memory_size" {
  default     = "1.5"
  description = "Size of memory."
}


variable "port_number-1" {
  default     = "80"
  description = "Port number."
}

variable "port_number-2" {
  default     = "9987"
  description = "Port number."
}

variable "port_number-3" {
  default     = "30033"
  description = "Port number."
}

variable "port_number-4" {
  default     = "10011"
  description = "Port number."
}
