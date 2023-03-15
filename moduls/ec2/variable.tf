variable "instance-name" {
  type = map(any)

}

# variable "instance-map" {
#   type = string
# }

variable "ami_id" {
  type = string
  default = ""
  
}
