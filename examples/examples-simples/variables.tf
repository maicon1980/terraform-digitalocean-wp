

variable "region" {
  type    = string
  default = "nyc1"
}

variable "wp_vm_count" {
  type    = number
  default = 2
  description = "Numero de VMs para o Wordpress"

  validation {
    condition = var.wp_vm_count > 1
    error_message = "O número mínimo de VMs são 2"
  }
}

variable "vms_ssh" {
  type = string
  description = "Chave SSH para as VMs"
}
