variable "organization" {
  type    = string
  default = "devhalos"
}

variable "project" {
  type    = string
  default = "nihil"
}

variable "component" {
  type = string
}

variable "tags" {
  type = map(string)
}
