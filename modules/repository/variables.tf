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
