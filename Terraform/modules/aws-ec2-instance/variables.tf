variable "instance_name" {
  type = string
  description = "The name of the instance to be provisioned."
}

variable "ami_id" {
  type = string
  description = "AMI to use for the instance."
}

variable "instance_type" {
  type = string
  description = "Instance type to use for the instance."
}

variable "public_key_path" {
  type = string
  description = "The path to the public key material."
}