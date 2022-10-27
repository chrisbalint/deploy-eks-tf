variable "access_key" {
  type =  string
}

variable "secret_key" {
  type =  string
}

variable "tags" {
  description = "Map of tags"
  type =  map
}

variable "cidr_blocks" {
  type =  list
}
