variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "First_instance"
}

variable "REGION" {
  default = "us-east-2"
}

variable "ZONE1" {
  default = "us-east-2a"
}
variable "AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-0cd3c7f72edd5b06d"
  }
}
variable "PRODUCTION" {
  type    = string
  default = "production"

}
