variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  description = "Resources location in Azure"
}

variable "cluster_name" {
  type        = string
  description = "AKS name in Azure"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}

variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
}

variable "acr_name" {
  type        = string
  description = "ACR name"
}

variable "tenant_id" {
  type        = string
  description = "tenant id"
}

variable "object_id" {
  type        = string
  description = "object id"
}


variable "address_space" {
  description = "The address space for the VNet"
  default     = "10.0.0.0/16"
}

variable "aks_subnet_prefix" {
  description = "The address prefix for the AKS subnet"
  default     = "10.0.1.0/24"
}

variable "apim_subnet_prefix" {
  description = "The address prefix for the APIM subnet"
  default     = "10.0.2.0/24"
}

variable "virtual_network_address_prefix" {
  description = "VNET address prefix"
  default     = "10.0.0.0/8"
}

variable "aks_subnet_address_prefix" {
  description = "Subnet address prefix."
  default     = "10.240.0.0/16"
}
variable "app_gateway_subnet_address_prefix" {
  description = "Subnet server IP address."
  default     = "10.1.0.0/16"
}
