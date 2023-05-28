variable "owner" {
  type        = string
  description = "Nome do time responsável"
}

variable "enviroment" {
  type        = string
  description = "Sigla do ambiente correspondente a implantação"
}

variable "region" {
  type        = string
  description = "Id da região que os recursos serão provisionados"
}
