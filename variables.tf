# variables.tf - Input variables
variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of the EC2 Key Pair"
  type        = string
  default     = "29jul25"
}

variable "project_name" {
  description = "Name of the project for tagging"
  type        = string
  default     = "simple-web-server"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "development"
}
