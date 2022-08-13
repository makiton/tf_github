variable "repository_name" {
  type = string
}
variable "description" {
  type = string
}
variable "homepage_url" {
  type    = string
  default = ""
}
variable "gitignore_template" {
  type    = string
  default = ""
}
variable "private" {
  type    = bool
  default = false
}
variable "is_template" {
  type    = bool
  default = false
}

variable "status_checks" {
  type    = list(string)
  default = []
}

variable "protected_branches" {
  type    = map(object({}))
  default = { main = {} }
}

variable "archived" {
  type    = bool
  default = false
}
