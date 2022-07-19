variable "aws_region" {
  default = "eu-west-2"
}

variable "availability_zone" {
  type    = string
  default = "eu-west-2b"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "servers_public_subnet_cidr_block" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.1.1.0/24"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "aws_key_pair" {
  description = "keypair for Servers; Jenkins, Ansible & K8s"
  type        = list(string)
  default     = ["Jenkins-keypair", "Ansible_Server_keypair", "K8s_Server_keypair"]
}