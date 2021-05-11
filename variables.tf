variable "rg_name" {
  description = "valor definido para o nome do novo Resource Group"
  type        = string
}

variable "extra_tags" {
  description = "Caso seja necessário adicionar um Tag específica"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "valor para definir a qual ambiente o Resourse Group se destina"
  type        = string
}

variable "location" {
  description = "Valor para definir a localização do Resource Group"
  type        = string
  default     = "Brazil South"
}

variable "application" {
  description = "Define a qual applicação pertencerá o Resource Group"
  type        = string
  default     = ""
}

variable "prefix_loc_rg" {
  type = map(any)
  default = {
    "Brazil South" = "br"
    "East US 2"    = "us"
  }
}